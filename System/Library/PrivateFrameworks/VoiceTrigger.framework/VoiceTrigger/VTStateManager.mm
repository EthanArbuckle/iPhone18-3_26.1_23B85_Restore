@interface VTStateManager
+ (BOOL)iPhoneShouldStartVoiceTriggerInCoreSpeech;
+ (BOOL)isLastTriggerForced;
+ (BOOL)isLastTriggerSecondChanceTriggered;
+ (id)_serviceClient;
+ (id)firstChanceAudioBuffer;
+ (id)firstChanceTriggeredDate;
+ (id)firstChanceVTEventInfo;
+ (id)requestCurrentBuiltInRTModelDictionary;
+ (id)requestCurrentVoiceTriggerAssetDictionary;
+ (int64_t)getVoiceTriggerCount;
+ (void)clearVoiceTriggerCount;
+ (void)notifyVoiceTrigger;
+ (void)notifyVoiceTriggeredSiriSessionCancelled;
+ (void)notifyVoiceTriggeredSiriSessionCancelled:(id)cancelled;
+ (void)requestAudioCapture:(double)capture;
+ (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)reply;
+ (void)requestForcedSecondChance;
+ (void)requestForcedTriggerEvent;
+ (void)requestPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout;
+ (void)requestVoiceTriggerEnabled:(BOOL)enabled forReason:(id)reason;
+ (void)setCurrentBuiltInRTModelDictionary:(id)dictionary;
- (VTStateManager)initWithProperty:(id)property callbackWithMessage:(id)message;
- (VTStateManager)initWithProperty:(id)property callbackWithMessageAndTimestamp:(id)timestamp;
- (VTStateManager)initWithProperty:(id)property phraseSpotter:(id)spotter enablePolicy:(id)policy callbackWithMessageAndTimestamp:(id)timestamp;
- (void)VTFirstUnlockMonitor:(id)monitor didReceiveFirstUnlock:(BOOL)unlock;
- (void)_initializeXPCService;
- (void)_notifyStateTransitionToState:(int64_t)state withStartTimestamp:(unint64_t)timestamp;
- (void)_powerlog:(id)_powerlog;
- (void)_stateTransitionDidOccur:(BOOL)occur fromCallback:(BOOL)callback;
- (void)gestureMonitorDidReceiveSleepGesture:(id)gesture;
- (void)gestureMonitorDidReceiveWakeGesture:(id)gesture;
@end

@implementation VTStateManager

+ (id)_serviceClient
{
  if (_serviceClient_onceToken != -1)
  {
    dispatch_once(&_serviceClient_onceToken, &__block_literal_global_61_3818);
  }

  v3 = _serviceClient__serviceClient;

  return v3;
}

+ (id)requestCurrentBuiltInRTModelDictionary
{
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, v6, 2u);
  }

  v3 = objc_alloc_init(VTXPCServiceClient);
  requestCurrentBuiltInRTModelDictionary = [(VTXPCServiceClient *)v3 requestCurrentBuiltInRTModelDictionary];

  return requestCurrentBuiltInRTModelDictionary;
}

- (void)_initializeXPCService
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VTXPCServiceServer);
  xpcServer = self->_xpcServer;
  self->_xpcServer = v3;

  [(VTXPCServiceServer *)self->_xpcServer startService];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "com.apple.voicetrigger.XPCRestarted";
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Notifying Post : %{public}s", &v6, 0xCu);
  }

  notify_post("com.apple.voicetrigger.XPCRestarted");
}

- (void)VTFirstUnlockMonitor:(id)monitor didReceiveFirstUnlock:(BOOL)unlock
{
  if (unlock)
  {
    notify_post("com.apple.corespeech.voicetriggerassetchange");
  }
}

- (void)gestureMonitorDidReceiveSleepGesture:(id)gesture
{
  if (!+[VTUtilities isNano])
  {
    phraseSpotter = self->_phraseSpotter;

    [(VTPhraseSpotter *)phraseSpotter didReceiveSleepGesture];
  }
}

- (void)gestureMonitorDidReceiveWakeGesture:(id)gesture
{
  if (+[VTUtilities isNano])
  {
    self->_wakeGestureHostTime = mach_absolute_time();
  }

  else
  {
    phraseSpotter = self->_phraseSpotter;

    [(VTPhraseSpotter *)phraseSpotter didReceiveWakeGesture];
  }
}

- (void)_powerlog:(id)_powerlog
{
  _powerlogCopy = _powerlog;
  if (PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
  }
}

- (void)_notifyStateTransitionToState:(int64_t)state withStartTimestamp:(unint64_t)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_callbackWithMessageAndTimestamp)
  {
    if (state)
    {
      if (state == 2 && !self->_rtModelDownloaded)
      {
        self->_rtModelDownloaded = 1;
      }
    }

    else if (!self->_rtModelDownloaded)
    {
      v7 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: For the first start request, we need to ask update model before start request", &v9, 2u);
        v7 = VTLogContextFacilityVoiceTrigger;
      }

      self->_rtModelDownloaded = 1;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134349056;
        stateCopy = 2;
        _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Callback with message and timestamp : %{public}ld, 0", &v9, 0xCu);
      }

      (*(self->_callbackWithMessageAndTimestamp + 2))();
    }

    kdebug_trace();
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134349312;
      stateCopy = state;
      v11 = 2050;
      timestampCopy = timestamp;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: Callback with message and timestamp : %{public}ld, %{public}llu", &v9, 0x16u);
    }

    (*(self->_callbackWithMessageAndTimestamp + 2))();
  }
}

- (void)_stateTransitionDidOccur:(BOOL)occur fromCallback:(BOOL)callback
{
  callbackCopy = callback;
  occurCopy = occur;
  v26 = *MEMORY[0x277D85DE8];
  if (self->_voiceTriggerIsEnabledOnCoreSpeechDaemon != occur)
  {
    self->_voiceTriggerIsEnabledOnCoreSpeechDaemon = occur;
    notify_post("com.apple.voicetrigger.enablePolicyChanged");
  }

  if (occurCopy)
  {
    v7 = +[VTPreferences sharedPreferences];
    v8 = [v7 voiceTriggerInCoreSpeech] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Stop";
    if (v8)
    {
      v10 = @"Start";
    }

    *v25 = 138543362;
    *&v25[4] = v10;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "VoiceTrigger will %{public}@", v25, 0xCu);
  }

  if (callbackCopy && self->_voiceTriggerIsEnabled == v8)
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"stopped";
      if (v8)
      {
        v12 = @"running";
      }

      *v25 = 138543362;
      *&v25[4] = v12;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "VoiceTrigger is already %{public}@, nothing to change", v25, 0xCu);
    }
  }

  else
  {
    self->_voiceTriggerIsEnabled = v8;
    v13 = +[VTAggregator sharedAggregator];
    v14 = v13;
    if (v8)
    {
      [v13 logTimeVoiceTriggerTransitionsToState:1];

      [(VTStateManager *)self _powerlog:&unk_283715508];
      v15 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "::: Voice Trigger started", v25, 2u);
      }

      if (!self->_wakeGestureHostTime)
      {
        self->_wakeGestureHostTime = mach_absolute_time();
      }

      *v25 = 0;
      mach_timebase_info(v25);
      if (*v25)
      {
        LODWORD(v16) = *&v25[4];
        v17 = (v16 / *v25 * 1000000000.0 * 0.05);
      }

      else
      {
        v17 = 0;
      }

      wakeGestureHostTime = self->_wakeGestureHostTime;
      v23 = wakeGestureHostTime >= v17;
      v24 = wakeGestureHostTime - v17;
      if (v23)
      {
        v21 = v24;
      }

      else
      {
        v21 = 0;
      }

      self->_wakeGestureHostTime = v21;
      selfCopy2 = self;
      v20 = 0;
    }

    else
    {
      [v13 logTimeVoiceTriggerTransitionsToState:0];

      [(VTStateManager *)self _powerlog:&unk_283715530];
      v18 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "::: Voice Trigger stopped", v25, 2u);
      }

      self->_wakeGestureHostTime = 0;
      selfCopy2 = self;
      v20 = 1;
      v21 = 0;
    }

    [(VTStateManager *)selfCopy2 _notifyStateTransitionToState:v20 withStartTimestamp:v21];
  }
}

- (VTStateManager)initWithProperty:(id)property phraseSpotter:(id)spotter enablePolicy:(id)policy callbackWithMessageAndTimestamp:(id)timestamp
{
  propertyCopy = property;
  spotterCopy = spotter;
  policyCopy = policy;
  timestampCopy = timestamp;
  v47.receiver = self;
  v47.super_class = VTStateManager;
  v14 = [(VTStateManager *)&v47 init];
  if (+[VTUtilities VTIsHorseman])
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v16 = "VoiceTrigger framework not available. Returning nil for VTStateManager";
LABEL_10:
      _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, v16, &buf, 2u);
      v17 = 0;
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (+[VTUtilities isNonUI])
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v16 = "VoiceTrigger framework not available on Non-UI, Retuning nil for VTStateManager";
      goto LABEL_10;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_29;
  }

  if (os_variant_is_darwinos())
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v16 = "VoiceTrigger framework not available. Returning nil for VTStateManager";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v14)
  {
    v18 = dispatch_queue_create("com.apple.voicetrigger.VTStateManager", 0);
    v19 = *(v14 + 1);
    *(v14 + 1) = v18;

    v20 = MEMORY[0x223DF24E0](timestampCopy);
    v21 = *(v14 + 4);
    *(v14 + 4) = v20;

    objc_storeStrong(v14 + 2, spotter);
    v22 = objc_alloc_init(VTBuiltInRTModel);
    v23 = *(v14 + 3);
    *(v14 + 3) = v22;

    *(v14 + 28) = 0;
    *(v14 + 58) = 0;
    *(v14 + 9) = 0;
    if (propertyCopy)
    {
      v24 = [propertyCopy objectForKeyedSubscript:@"VoiceTriggerAvailable"];
      v25 = v24;
      if (v24 && [v24 BOOLValue])
      {
        v26 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_223A31000, v26, OS_LOG_TYPE_DEFAULT, "Obtained VoiceTrigger available from AQME, registering callback", &buf, 2u);
        }

        v27 = *(v14 + 2);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __94__VTStateManager_initWithProperty_phraseSpotter_enablePolicy_callbackWithMessageAndTimestamp___block_invoke;
        v45[3] = &unk_2784ECFF8;
        v46 = v14;
        [v27 notifyAssetChangeWithCallback:v45];
      }
    }

    [v14 _initializeXPCService];
    dispatch_async(*(v14 + 1), &__block_literal_global_3739);
    v28 = +[VTPreferences sharedPreferences];
    gestureSubscriptionEnabled = [v28 gestureSubscriptionEnabled];

    if (gestureSubscriptionEnabled)
    {
      v30 = +[VTGestureMonitor defaultGestureMonitor];
      v31 = *(v14 + 8);
      *(v14 + 8) = v30;

      [*(v14 + 8) setDelegate:v14];
      [*(v14 + 8) startObserving];
    }

    v32 = objc_alloc_init(VTCoreSpeechKeepAliveHandler);
    v33 = *(v14 + 11);
    *(v14 + 11) = v32;

    [*(v14 + 11) start];
    objc_storeStrong(v14 + 5, policy);
    objc_initWeak(&buf, v14);
    v34 = *(v14 + 5);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __94__VTStateManager_initWithProperty_phraseSpotter_enablePolicy_callbackWithMessageAndTimestamp___block_invoke_16;
    v42[3] = &unk_2784ED050;
    objc_copyWeak(&v43, &buf);
    [v34 setCallback:v42];
    if ([*(v14 + 5) isEnabled])
    {
      v35 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&dword_223A31000, v35, OS_LOG_TYPE_DEFAULT, "::: Checking VTStateManager policy: init to be : Start", v41, 2u);
      }

      [v14 _stateTransitionDidOccur:1 fromCallback:0];
      coreSpeechKeepAliveHandler = [v14 coreSpeechKeepAliveHandler];
      [coreSpeechKeepAliveHandler voiceTriggerPolicyDidChange:1];
    }

    else
    {
      coreSpeechKeepAliveHandler = [v14 coreSpeechKeepAliveHandler];
      [coreSpeechKeepAliveHandler voiceTriggerPolicyDidChange:0];
    }

    v37 = +[VTFirstUnlockMonitor sharedInstance];
    [v37 addObserver:v14];

    v38 = objc_alloc_init(VTRemoteDarwinHIDEventNotifier);
    v39 = *(v14 + 10);
    *(v14 + 10) = v38;

    [*(v14 + 10) startObserving];
    objc_destroyWeak(&v43);
    objc_destroyWeak(&buf);
  }

  v17 = v14;
LABEL_29:

  return v17;
}

void __94__VTStateManager_initWithProperty_phraseSpotter_enablePolicy_callbackWithMessageAndTimestamp___block_invoke_16(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "::: Checking VTStateManager policy: Should be running? %{public}@", &v7, 0xCu);
  }

  [WeakRetained _stateTransitionDidOccur:a2 fromCallback:1];
  v6 = [WeakRetained coreSpeechKeepAliveHandler];
  [v6 voiceTriggerPolicyDidChange:a2];
}

void __94__VTStateManager_initWithProperty_phraseSpotter_enablePolicy_callbackWithMessageAndTimestamp___block_invoke_2()
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCSActivationEventNotifierClass_softClass;
  v9 = getCSActivationEventNotifierClass_softClass;
  if (!getCSActivationEventNotifierClass_softClass)
  {
    v10 = 0;
    if (!CoreSpeechLibraryCore_frameworkLibrary)
    {
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __CoreSpeechLibraryCore_block_invoke;
      v14 = &__block_descriptor_40_e5_v8__0l;
      v15 = &v10;
      v16 = xmmword_2784EC960;
      v17 = 0;
      CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
      if (!CoreSpeechLibraryCore_frameworkLibrary)
      {
        goto LABEL_16;
      }

      if (v10)
      {
        free(v10);
      }
    }

    v7[3] = objc_getClass("CSActivationEventNotifier");
    if (!v7[3])
    {
      goto LABEL_16;
    }

    getCSActivationEventNotifierClass_softClass = v7[3];
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedNotifier];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v3 = getCSActivationEventClass_softClass;
  v9 = getCSActivationEventClass_softClass;
  if (!getCSActivationEventClass_softClass)
  {
    v10 = 0;
    if (!CoreSpeechLibraryCore_frameworkLibrary)
    {
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __CoreSpeechLibraryCore_block_invoke;
      v14 = &__block_descriptor_40_e5_v8__0l;
      v15 = &v10;
      v16 = xmmword_2784EC960;
      v17 = 0;
      CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
      if (!CoreSpeechLibraryCore_frameworkLibrary)
      {
        goto LABEL_16;
      }

      if (v10)
      {
        free(v10);
      }
    }

    v7[3] = objc_getClass("CSActivationEvent");
    if (v7[3])
    {
      getCSActivationEventClass_softClass = v7[3];
      v3 = v7[3];
      goto LABEL_15;
    }

LABEL_16:
    abort_report_np();
    __break(1u);
  }

LABEL_15:
  v4 = v3;
  _Block_object_dispose(&v6, 8);
  v5 = [v3 mediaserverdLaunchedEvent:mach_absolute_time()];
  [v2 notifyActivationEvent:v5 completion:&__block_literal_global_12];
}

void __94__VTStateManager_initWithProperty_phraseSpotter_enablePolicy_callbackWithMessageAndTimestamp___block_invoke_3()
{
  v0 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_223A31000, v0, OS_LOG_TYPE_DEFAULT, "finished mediaserverd launch notification", v1, 2u);
  }
}

- (VTStateManager)initWithProperty:(id)property callbackWithMessageAndTimestamp:(id)timestamp
{
  propertyCopy = property;
  timestampCopy = timestamp;
  if (+[VTUtilities VTIsHorseman])
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v9 = "VoiceTrigger framework not available. Returning nil for VTStateManager";
      v10 = &v17;
LABEL_10:
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (+[VTUtilities isNonUI])
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v9 = "VoiceTrigger framework not available on Non-UI, Retuning nil for VTStateManager";
      v10 = &v16;
      goto LABEL_10;
    }
  }

  else
  {
    if (!os_variant_is_darwinos())
    {
      v13 = [[VTPhraseSpotter alloc] initWithHardwareSampleRate:16000.0];
      v14 = +[VTPolicy defaultVoiceTriggerEnablePolicy];
      self = [(VTStateManager *)self initWithProperty:propertyCopy phraseSpotter:v13 enablePolicy:v14 callbackWithMessageAndTimestamp:timestampCopy];

      selfCopy = self;
      goto LABEL_12;
    }

    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v9 = "VoiceTrigger framework not available. Returning nil for VTStateManager";
      v10 = &v15;
      goto LABEL_10;
    }
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (VTStateManager)initWithProperty:(id)property callbackWithMessage:(id)message
{
  messageCopy = message;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__VTStateManager_initWithProperty_callbackWithMessage___block_invoke;
  v10[3] = &unk_2784EC918;
  v11 = messageCopy;
  v7 = messageCopy;
  v8 = [(VTStateManager *)self initWithProperty:property callbackWithMessageAndTimestamp:v10];

  return v8;
}

+ (BOOL)iPhoneShouldStartVoiceTriggerInCoreSpeech
{
  v2 = +[VTPreferences sharedPreferences];
  voiceTriggerInCoreSpeech = [v2 voiceTriggerInCoreSpeech];

  if (!voiceTriggerInCoreSpeech)
  {
    return 0;
  }

  v4 = +[VTPolicy defaultVoiceTriggerEnablePolicy];
  isEnabled = [v4 isEnabled];

  return isEnabled;
}

+ (void)notifyVoiceTrigger
{
  v2 = +[VTPreferences sharedPreferences];
  useSiriActivationSPIForiOS = [v2 useSiriActivationSPIForiOS];

  if (useSiriActivationSPIForiOS)
  {
    mach_absolute_time();
    v6 = +[VTPhraseSpotter currentSpotter];
    lastVoiceTriggerEventInfo = [v6 lastVoiceTriggerEventInfo];
    AFSiriActivationBuiltInMicVoiceTrigger();
  }

  else
  {
    notify_post("com.apple.coreaudio.borealisTrigger");
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Use legacy trigger notificiation", buf, 2u);
    }
  }
}

void __36__VTStateManager_notifyVoiceTrigger__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTLogContextFacilityVoiceTrigger;
  if (a2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "AFSiriActivationBuiltInMicVoiceTrigger success", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [v4 localizedDescription];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "AFSiriActivationBuiltInMicVoiceTrigger failed : %{public}@", &v8, 0xCu);
  }
}

+ (void)setCurrentBuiltInRTModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[VTStateManager _serviceClient];
  [v4 setCurrentBuiltInRTModelDictionary:dictionaryCopy];
}

+ (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)reply
{
  replyCopy = reply;
  v4 = dispatch_semaphore_create(0);
  v5 = +[VTStateManager _serviceClient];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__VTStateManager_requestCurrentVoiceTriggerAssetDictionaryWithReply___block_invoke;
  v9[3] = &unk_2784EC940;
  v6 = replyCopy;
  v11 = v6;
  v7 = v4;
  v10 = v7;
  [v5 requestCurrentVoiceTriggerAssetDictionaryWithReply:v9];

  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

intptr_t __69__VTStateManager_requestCurrentVoiceTriggerAssetDictionaryWithReply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

+ (id)requestCurrentVoiceTriggerAssetDictionary
{
  v2 = objc_alloc_init(VTXPCServiceClient);
  requestCurrentVoiceTriggerAssetDictionary = [(VTXPCServiceClient *)v2 requestCurrentVoiceTriggerAssetDictionary];

  return requestCurrentVoiceTriggerAssetDictionary;
}

+ (void)requestAudioCapture:(double)capture
{
  v4 = +[VTStateManager _serviceClient];
  [v4 requestAudioCapture:capture];
}

+ (id)firstChanceTriggeredDate
{
  v2 = +[VTStateManager _serviceClient];
  getFirstChanceTriggeredDate = [v2 getFirstChanceTriggeredDate];

  return getFirstChanceTriggeredDate;
}

+ (id)firstChanceVTEventInfo
{
  v2 = +[VTStateManager _serviceClient];
  getFirstChanceVTEventInfo = [v2 getFirstChanceVTEventInfo];

  return getFirstChanceVTEventInfo;
}

+ (id)firstChanceAudioBuffer
{
  v2 = +[VTStateManager _serviceClient];
  getFirstChanceAudioBuffer = [v2 getFirstChanceAudioBuffer];

  return getFirstChanceAudioBuffer;
}

+ (int64_t)getVoiceTriggerCount
{
  v2 = +[VTStateManager _serviceClient];
  getVoiceTriggerCount = [v2 getVoiceTriggerCount];

  return getVoiceTriggerCount;
}

+ (void)clearVoiceTriggerCount
{
  v2 = +[VTStateManager _serviceClient];
  [v2 clearVoiceTriggerCount];
}

+ (BOOL)isLastTriggerSecondChanceTriggered
{
  v2 = +[VTStateManager _serviceClient];
  v3 = [v2 getLastTriggerType] == 2;

  return v3;
}

+ (BOOL)isLastTriggerForced
{
  v2 = +[VTStateManager _serviceClient];
  v3 = [v2 getLastTriggerType] == 3;

  return v3;
}

+ (void)requestForcedTriggerEvent
{
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: Received request to force trigger event", v4, 2u);
  }

  v3 = +[VTStateManager _serviceClient];
  [v3 notifyTriggerEventRequest];
}

+ (void)requestForcedSecondChance
{
  v2 = +[VTStateManager _serviceClient];
  [v2 notifySecondChanceRequest];
}

+ (void)notifyVoiceTriggeredSiriSessionCancelled:(id)cancelled
{
  v8 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = cancelledCopy;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "::: Received voice triggered siri session cancellation with reason: %{public}@", &v6, 0xCu);
  }

  v5 = +[VTStateManager _serviceClient];
  [v5 notifyVoiceTriggeredSiriSessionCancelled:cancelledCopy];
}

+ (void)notifyVoiceTriggeredSiriSessionCancelled
{
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: Received voice triggered siri session cancellation", v6, 2u);
  }

  v3 = +[VTPreferences sharedPreferences];
  corespeechDaemonEnabled = [v3 corespeechDaemonEnabled];

  if (corespeechDaemonEnabled)
  {
    sharedService = [getCSVoiceTriggerXPCServiceClass() sharedService];
    [sharedService notifyVoiceTriggeredSiriSessionCancelled];
  }

  else
  {
    sharedService = +[VTStateManager _serviceClient];
    [sharedService notifyVoiceTriggeredSiriSessionCancelled:@"Unknown"];
  }
}

+ (void)requestPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout
{
  bypassingCopy = bypassing;
  v15 = *MEMORY[0x277D85DE8];
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"DO NOT";
    if (bypassingCopy)
    {
      v7 = @"DO";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2050;
    timeoutCopy = timeout;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "::: Received request to %{public}@ bypass phrase spotter with timeout: %{public}f", &v11, 0x16u);
  }

  v8 = +[VTPreferences sharedPreferences];
  corespeechDaemonEnabled = [v8 corespeechDaemonEnabled];

  if (corespeechDaemonEnabled)
  {
    [getCSVoiceTriggerXPCServiceClass() sharedService];
  }

  else
  {
    +[VTStateManager _serviceClient];
  }
  v10 = ;
  [v10 setPhraseSpotterBypassing:bypassingCopy timeout:timeout];
}

+ (void)requestVoiceTriggerEnabled:(BOOL)enabled forReason:(id)reason
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"DISABLE";
    if (enabledCopy)
    {
      v7 = @"ENABLE";
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = reasonCopy;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "::: Received request to %{public}@ voice trigger - Reason: %{public}@)", &v11, 0x16u);
  }

  v8 = +[VTPreferences sharedPreferences];
  corespeechDaemonEnabled = [v8 corespeechDaemonEnabled];

  if (corespeechDaemonEnabled)
  {
    [getCSVoiceTriggerXPCServiceClass() sharedService];
  }

  else
  {
    +[VTStateManager _serviceClient];
  }
  v10 = ;
  [v10 enableVoiceTrigger:enabledCopy withAssertion:reasonCopy];
}

uint64_t __32__VTStateManager__serviceClient__block_invoke()
{
  _serviceClient__serviceClient = objc_alloc_init(VTXPCServiceClient);

  return MEMORY[0x2821F96F8]();
}

@end