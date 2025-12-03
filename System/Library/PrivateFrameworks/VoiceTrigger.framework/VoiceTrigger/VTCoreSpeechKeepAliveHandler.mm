@interface VTCoreSpeechKeepAliveHandler
- (BOOL)_coreSpeechDaemonKeepAlived;
- (VTCoreSpeechKeepAliveHandler)init;
- (void)VTSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)_disableCoreSpeechDaemonKeepAlive;
- (void)_enableCoreSpeechDaemonKeepAlive;
- (void)_handleSpeakerActivated;
- (void)_handleSpeakerInactivated;
- (void)_voiceTriggerPolicyDisabled;
- (void)_voiceTriggerPolicyEnabled;
- (void)dealloc;
- (void)start;
- (void)voiceTriggerPolicyDidChange:(BOOL)change;
@end

@implementation VTCoreSpeechKeepAliveHandler

void __37__VTCoreSpeechKeepAliveHandler_start__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpeakerInactivated];
}

- (void)_handleSpeakerInactivated
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received Speaker Inactivated Event", v4, 2u);
  }

  self->_speakerStateActivated = 0;
  [(VTCoreSpeechKeepAliveHandler *)self _disableCoreSpeechDaemonKeepAlive];
}

- (void)_disableCoreSpeechDaemonKeepAlive
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(VTCoreSpeechKeepAliveHandler *)self _coreSpeechDaemonKeepAlived])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    v3 = [defaultManager removeItemAtPath:@"/var/mobile/Library/VoiceTrigger/KeepAlive" error:&v6];
    v4 = v6;

    v5 = VTLogContextFacilityVoiceTrigger;
    if (v3)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Successfully make CoreSpeechDaemon as Non-KeepAlive", buf, 2u);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = @"/var/mobile/Library/VoiceTrigger/KeepAlive";
      _os_log_error_impl(&dword_223A31000, v5, OS_LOG_TYPE_ERROR, "Failed to make CoreSpeechDaemon as Non-KeepAlive : Cannot remove file %{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)_coreSpeechDaemonKeepAlived
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/VoiceTrigger/KeepAlive"];

  return v3;
}

- (void)_voiceTriggerPolicyDisabled
{
  self->_voiceTriggerEnabled = 0;
  if (!+[VTUtilities isNano])
  {

    [(VTCoreSpeechKeepAliveHandler *)self _disableCoreSpeechDaemonKeepAlive];
  }
}

void __37__VTCoreSpeechKeepAliveHandler_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpeakerActivated];
}

- (void)_handleSpeakerActivated
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received Speaker Activated Event", v4, 2u);
  }

  self->_speakerStateActivated = 1;
  if (self->_voiceTriggerEnabled)
  {
    [(VTCoreSpeechKeepAliveHandler *)self _enableCoreSpeechDaemonKeepAlive];
  }
}

- (void)_enableCoreSpeechDaemonKeepAlive
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(VTCoreSpeechKeepAliveHandler *)self _coreSpeechDaemonKeepAlived])
  {
    return;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/VoiceTrigger"];

  if (v3)
  {
    goto LABEL_5;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v5 = [defaultManager2 createDirectoryAtPath:@"/var/mobile/Library/VoiceTrigger" withIntermediateDirectories:1 attributes:0 error:&v13];
  v6 = v13;

  if (v5)
  {

LABEL_5:
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager3 createFileAtPath:@"/var/mobile/Library/VoiceTrigger/KeepAlive" contents:0 attributes:0];

    v9 = VTLogContextFacilityVoiceTrigger;
    if (v8)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Successfully make CoreSpeechDaemon as KeepAlive", buf, 2u);
      }
    }

    else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = @"/var/mobile/Library/VoiceTrigger/KeepAlive";
      _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "Failed to make CoreSpeechDaemon as KeepAlive : Cannot create file at %{public}@", buf, 0xCu);
    }

    return;
  }

  v10 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    localizedDescription = [v6 localizedDescription];
    *buf = 138543618;
    v15 = @"/var/mobile/Library/VoiceTrigger";
    v16 = 2114;
    v17 = localizedDescription;
    _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "Cannot create directory at : %{public}@ : %{public}@", buf, 0x16u);
  }
}

- (void)VTSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__VTCoreSpeechKeepAliveHandler_VTSiriEnabledMonitor_didReceiveEnabled___block_invoke;
  v5[3] = &unk_2784ED0F0;
  enabledCopy = enabled;
  v5[4] = self;
  dispatch_async(queue, v5);
}

uint64_t __71__VTCoreSpeechKeepAliveHandler_VTSiriEnabledMonitor_didReceiveEnabled___block_invoke(uint64_t a1)
{
  result = +[VTUtilities isNano];
  if (result)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {

      return [v3 _enableCoreSpeechDaemonKeepAlive];
    }

    else
    {

      return [v3 _disableCoreSpeechDaemonKeepAlive];
    }
  }

  return result;
}

- (void)_voiceTriggerPolicyEnabled
{
  self->_voiceTriggerEnabled = 1;
  if (+[VTUtilities isNano](VTUtilities, "isNano") || !+[VTUtilities VTIsHorseman](VTUtilities, "VTIsHorseman") && !+[VTUtilities supportBargeIn](VTUtilities, "supportBargeIn") && !+[VTUtilities isAlwaysOn])
  {

    [(VTCoreSpeechKeepAliveHandler *)self _enableCoreSpeechDaemonKeepAlive];
  }
}

- (void)voiceTriggerPolicyDidChange:(BOOL)change
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__VTCoreSpeechKeepAliveHandler_voiceTriggerPolicyDidChange___block_invoke;
  v4[3] = &unk_2784ED0F0;
  changeCopy = change;
  v4[4] = self;
  dispatch_async(queue, v4);
}

uint64_t __60__VTCoreSpeechKeepAliveHandler_voiceTriggerPolicyDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _voiceTriggerPolicyEnabled];
  }

  else
  {
    return [v2 _voiceTriggerPolicyDisabled];
  }
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VTCoreSpeechKeepAliveHandler_start__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__VTCoreSpeechKeepAliveHandler_start__block_invoke(uint64_t a1)
{
  if (+[VTUtilities isNano])
  {
    v2 = +[VTSiriEnabledMonitor sharedInstance];
    [v2 addObserver:*(a1 + 32)];

    v3 = +[VTSiriEnabledMonitor sharedInstance];
    v4 = [v3 isEnabled];

    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 _enableCoreSpeechDaemonKeepAlive];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(a1 + 32);
  }

  [v5 _disableCoreSpeechDaemonKeepAlive];
LABEL_6:
  if (+[VTUtilities supportBargeIn])
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = *(a1 + 32);
    v7 = (v6 + 8);
    if (*(v6 + 8) == -1)
    {
      v8 = *(v6 + 16);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __37__VTCoreSpeechKeepAliveHandler_start__block_invoke_2;
      handler[3] = &unk_2784EC8F0;
      objc_copyWeak(&v14, &location);
      notify_register_dispatch("com.apple.coreaudio.speaker.active", v7, v8, handler);
      objc_destroyWeak(&v14);
      v6 = *(a1 + 32);
    }

    v9 = (v6 + 12);
    if (*(v6 + 12) == -1)
    {
      v10 = *(v6 + 16);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__VTCoreSpeechKeepAliveHandler_start__block_invoke_3;
      v11[3] = &unk_2784EC8F0;
      objc_copyWeak(&v12, &location);
      notify_register_dispatch("com.apple.coreaudio.speaker.inactive", v9, v10, v11);
      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  activeNotificationToken = self->_activeNotificationToken;
  if (activeNotificationToken != -1)
  {
    notify_cancel(activeNotificationToken);
    self->_activeNotificationToken = -1;
  }

  inactiveNotificationToken = self->_inactiveNotificationToken;
  if (inactiveNotificationToken != -1)
  {
    notify_cancel(inactiveNotificationToken);
    self->_inactiveNotificationToken = -1;
  }

  v5.receiver = self;
  v5.super_class = VTCoreSpeechKeepAliveHandler;
  [(VTCoreSpeechKeepAliveHandler *)&v5 dealloc];
}

- (VTCoreSpeechKeepAliveHandler)init
{
  if (+[VTUtilities isExclaveHardware])
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VTCoreSpeechKeepAliveHandler;
    v4 = [(VTCoreSpeechKeepAliveHandler *)&v8 init];
    if (v4)
    {
      v5 = dispatch_queue_create("VTCoreSpeechKeepAliveHandler", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      *&v4->_activeNotificationToken = -1;
      *&v4->_voiceTriggerEnabled = 0;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

@end