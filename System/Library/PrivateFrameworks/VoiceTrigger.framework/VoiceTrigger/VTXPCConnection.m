@interface VTXPCConnection
+ (void)initialize;
- (VTXPCConnection)init;
- (void)_setPhraseSpotterBypassing:(BOOL)a3;
- (void)clearVoiceTriggerCount;
- (void)enableTriggerEventXPCNotification:(BOOL)a3;
- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5;
- (void)getFirstChanceAudioBufferWithReply:(id)a3;
- (void)getFirstChanceTriggeredDateWithReply:(id)a3;
- (void)getFirstChanceVTEventInfoWithReply:(id)a3;
- (void)getTestResponse:(id)a3;
- (void)getVoiceTriggerCountWithReply:(id)a3;
- (void)handleDisconnect;
- (void)isLastTriggerFollowedBySpeechWithReply:(id)a3;
- (void)notifySecondChanceRequest;
- (void)notifyTriggerEventRequest;
- (void)notifyVoiceTriggeredSiriSessionCancelled:(id)a3;
- (void)queryLastTriggerEventTypeWithReply:(id)a3;
- (void)requestAudioCapture:(double)a3;
- (void)requestCurrentBuiltInRTModelDictionaryWithReply:(id)a3;
- (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)a3;
- (void)resetAssertions;
- (void)setCurrentBuiltInRTModelDictionary:(id)a3;
- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4 timestamp:(double)a5;
- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4 timestamp:(double)a5;
@end

@implementation VTXPCConnection

- (VTXPCConnection)init
{
  v6.receiver = self;
  v6.super_class = VTXPCConnection;
  v2 = [(VTXPCConnection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    activationAssertions = v2->_activationAssertions;
    v2->_activationAssertions = v3;

    *&v2->_isPhraseSpotterBypassed = 0;
  }

  return v2;
}

- (void)handleDisconnect
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "HandleDisconnect", buf, 2u);
  }

  v4 = [(NSMutableSet *)self->_activationAssertions copy];
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [MEMORY[0x277CCAC38] processInfo];
          [v11 systemUptime];
          [(VTXPCConnection *)self enableVoiceTrigger:0 withAssertion:v10 timestamp:?];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }
  }

  if (self->_isPhraseSpotterBypassed)
  {
    v12 = [MEMORY[0x277CCAC38] processInfo];
    [v12 systemUptime];
    [(VTXPCConnection *)self setPhraseSpotterBypassing:0 timeout:0.0 timestamp:v13];

    self->_isPhraseSpotterBypassed = 0;
  }

  if (self->_isRecording)
  {
    v14 = +[VTPhraseSpotter currentSpotter];
    [v14 stopAudioCapture];

    self->_isRecording = 0;
  }
}

- (void)enableTriggerEventXPCNotification:(BOOL)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = v3;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "EnableTriggerEventXPCNotification: %{public}d", v7, 8u);
  }

  v5 = +[VTTriggerEventMonitorManager sharedManager];
  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if (v3)
  {
    [v5 addConnection:v6];
  }

  else
  {
    [v5 removeConnection:v6];
  }
}

- (void)setCurrentBuiltInRTModelDictionary:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Setting builtIn RTModel dictionary : %{public}@", &v6, 0xCu);
  }

  v5 = +[VTBuiltInRTModel sharedInstance];
  [v5 setBuiltInRTModelDictionary:v3];
}

- (void)requestCurrentBuiltInRTModelDictionaryWithReply:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[VTBuiltInRTModel sharedInstance];
  v5 = [v4 builtInRTModelDictionary];

  if (v3)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "returning builtIn RTModel dictionary : %{public}@", &v7, 0xCu);
    }

    v3[2](v3, v5);
  }
}

- (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = [v4 assetDictionary];
  if (v3)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "returning asset dictionary : %{public}@", &v7, 0xCu);
    }

    v3[2](v3, v5);
  }
}

- (void)requestAudioCapture:(double)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 134349056;
      *(location + 4) = *&a3;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: Not capturing given wrong duration: %{public}.3f", location, 0xCu);
    }
  }

  else
  {
    if (requestAudioCapture__onceToken != -1)
    {
      dispatch_once(&requestAudioCapture__onceToken, &__block_literal_global_28);
    }

    v5 = +[VTPhraseSpotter currentSpotter];
    objc_initWeak(location, self);
    v6 = requestAudioCapture___queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__VTXPCConnection_requestAudioCapture___block_invoke_2;
    v9[3] = &unk_2784ECE48;
    v12[1] = *&a3;
    v10 = v5;
    v11 = self;
    v7 = v5;
    objc_copyWeak(v12, location);
    dispatch_sync(v6, v9);
    objc_destroyWeak(v12);

    objc_destroyWeak(location);
  }
}

void __39__VTXPCConnection_requestAudioCapture___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    *buf = 134349056;
    v16 = v3;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: Starting audio capture for %{public}.2f seconds", buf, 0xCu);
  }

  [*(a1 + 32) startAudioCapture];
  *(*(a1 + 40) + 17) = 1;
  if (requestAudioCapture___timer)
  {
    dispatch_source_cancel(requestAudioCapture___timer);
    v4 = requestAudioCapture___timer;
    requestAudioCapture___timer = 0;
  }

  if (*(a1 + 56) > 0.0)
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, requestAudioCapture___queue);
    v6 = requestAudioCapture___timer;
    requestAudioCapture___timer = v5;

    v7 = requestAudioCapture___timer;
    v8 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v9 = requestAudioCapture___timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__VTXPCConnection_requestAudioCapture___block_invoke_30;
    handler[3] = &unk_2784ED190;
    objc_copyWeak(&v14, (a1 + 48));
    v11 = *(a1 + 32);
    v10 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(requestAudioCapture___timer);

    objc_destroyWeak(&v14);
  }
}

void __39__VTXPCConnection_requestAudioCapture___block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: Stopping audio capture", v4, 2u);
    }

    *(*(a1 + 32) + 17) = 0;
    [*(a1 + 40) stopAudioCapture];
  }
}

uint64_t __39__VTXPCConnection_requestAudioCapture___block_invoke()
{
  requestAudioCapture___queue = dispatch_queue_create("audio capture assertion queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)isLastTriggerFollowedBySpeechWithReply:(id)a3
{
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isFollowedBySpeech];
    if (v3)
    {
LABEL_3:
      v3[2](v3, v6);
    }
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "No VoiceTrigger PhraseSpotter avail for trigger followed by speech", v8, 2u);
    }

    v6 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

- (void)getFirstChanceTriggeredDateWithReply:(id)a3
{
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstChanceTriggeredDate];
    if (v3)
    {
LABEL_3:
      v3[2](v3, v6);
    }
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "No VoiceTrigger PhraseSpotter avail for first chance triggered date", v8, 2u);
    }

    v6 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

- (void)getFirstChanceVTEventInfoWithReply:(id)a3
{
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstChanceVTEventInfo];
    if (v3)
    {
LABEL_3:
      v3[2](v3, v6);
    }
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "No VoiceTrigger PhraseSpotter avail for first chance voicetrigger event info", v8, 2u);
    }

    v6 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

- (void)getFirstChanceAudioBufferWithReply:(id)a3
{
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstChanceAudioBuffer];
    if (v3)
    {
LABEL_3:
      v3[2](v3, v6);
    }
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "No VoiceTrigger PhraseSpotter avail for first chance audio buffer", v8, 2u);
    }

    v6 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

- (void)getVoiceTriggerCountWithReply:(id)a3
{
  v6 = a3;
  v3 = +[VTPhraseSpotter currentSpotter];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 triggerCount];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (v6)
  {
LABEL_3:
    v6[2](v6, v5);
  }

LABEL_4:
}

- (void)clearVoiceTriggerCount
{
  v2 = +[VTPhraseSpotter currentSpotter];
  [v2 clearTriggerCount];
}

- (void)resetAssertions
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = "[VTXPCConnection resetAssertions]";
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: %{public}s", &v3, 0xCu);
  }
}

- (void)queryLastTriggerEventTypeWithReply:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastTriggerType];
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "No VTPhraseSpotter available to query last trigger event type", v9, 2u);
    }

    v6 = 0;
  }

  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240192;
    v9[1] = v6;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Requesting LastTriggerType : %{public}d", v9, 8u);
  }

  if (v3)
  {
    v3[2](v3, v6);
  }
}

- (void)notifyTriggerEventRequest
{
  v2 = +[VTPhraseSpotter currentSpotter];
  [v2 requestFoceTrigger];
}

- (void)notifySecondChanceRequest
{
  v2 = +[VTPhraseSpotter currentSpotter];
  [v2 requestSecondChance];
}

- (void)notifyVoiceTriggeredSiriSessionCancelled:(id)a3
{
  v3 = a3;
  v4 = +[VTPhraseSpotter currentSpotter];
  [v4 didReceiveSiriSessionCancellation:v3];
}

- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4 timestamp:(double)a5
{
  v6 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (setRaiseToSpeakBypassing_timeout_timestamp__onceToken != -1)
  {
    dispatch_once(&setRaiseToSpeakBypassing_timeout_timestamp__onceToken, &__block_literal_global_23_6390);
  }

  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NOT bypassed";
    if (v6)
    {
      v9 = @"bypassed";
    }

    *buf = 138543618;
    v15 = v9;
    v16 = 2050;
    v17 = a4;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: Asserting that RaiseToSpeak should be %{public}@, timeout: %{public}f", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = setRaiseToSpeakBypassing_timeout_timestamp___queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__VTXPCConnection_setRaiseToSpeakBypassing_timeout_timestamp___block_invoke_25;
  v11[3] = &unk_2784ECE20;
  v11[4] = self;
  v13 = v6;
  v12[1] = *&a4;
  objc_copyWeak(v12, buf);
  dispatch_sync(v10, v11);
  objc_destroyWeak(v12);
  objc_destroyWeak(buf);
}

void __62__VTXPCConnection_setRaiseToSpeakBypassing_timeout_timestamp___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) _setRaiseToSpeakBypassing:*(a1 + 56)];
  if (setRaiseToSpeakBypassing_timeout_timestamp___timer)
  {
    dispatch_source_cancel(setRaiseToSpeakBypassing_timeout_timestamp___timer);
    v2 = setRaiseToSpeakBypassing_timeout_timestamp___timer;
    setRaiseToSpeakBypassing_timeout_timestamp___timer = 0;
  }

  if (*(a1 + 56) == 1 && *(a1 + 48) > 0.0)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, setRaiseToSpeakBypassing_timeout_timestamp___queue);
    v4 = setRaiseToSpeakBypassing_timeout_timestamp___timer;
    setRaiseToSpeakBypassing_timeout_timestamp___timer = v3;

    v5 = setRaiseToSpeakBypassing_timeout_timestamp___timer;
    v6 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v7 = setRaiseToSpeakBypassing_timeout_timestamp___timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __62__VTXPCConnection_setRaiseToSpeakBypassing_timeout_timestamp___block_invoke_2;
    handler[3] = &unk_2784ECDF8;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(setRaiseToSpeakBypassing_timeout_timestamp___timer);
    objc_destroyWeak(&v9);
  }
}

void __62__VTXPCConnection_setRaiseToSpeakBypassing_timeout_timestamp___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: Timeout!! RaiseToSpeak should be NOT bypassed", v3, 2u);
    }

    [WeakRetained _setRaiseToSpeakBypassing:0];
  }
}

uint64_t __62__VTXPCConnection_setRaiseToSpeakBypassing_timeout_timestamp___block_invoke()
{
  setRaiseToSpeakBypassing_timeout_timestamp___queue = dispatch_queue_create("RaiseToSpeak assertion queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_setPhraseSpotterBypassing:(BOOL)a3
{
  v3 = a3;
  v5 = +[VTPhraseSpotter currentSpotter];
  if (self->_isPhraseSpotterBypassed != v3)
  {
    self->_isPhraseSpotterBypassed = v3;
    v6 = v5;
    [v5 setBypass:v3];
    v5 = v6;
  }
}

- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4 timestamp:(double)a5
{
  v6 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (setPhraseSpotterBypassing_timeout_timestamp__onceToken != -1)
  {
    dispatch_once(&setPhraseSpotterBypassing_timeout_timestamp__onceToken, &__block_literal_global_12_6401);
  }

  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NOT bypassed";
    if (v6)
    {
      v9 = @"bypassed";
    }

    *buf = 138543618;
    v15 = v9;
    v16 = 2050;
    v17 = a4;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "::: Asserting that PhraseSpotter should be %{public}@, timeout: %{public}f", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10 = setPhraseSpotterBypassing_timeout_timestamp___queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__VTXPCConnection_setPhraseSpotterBypassing_timeout_timestamp___block_invoke_20;
  v11[3] = &unk_2784ECE20;
  v11[4] = self;
  v13 = v6;
  v12[1] = *&a4;
  objc_copyWeak(v12, buf);
  dispatch_sync(v10, v11);
  objc_destroyWeak(v12);
  objc_destroyWeak(buf);
}

void __63__VTXPCConnection_setPhraseSpotterBypassing_timeout_timestamp___block_invoke_20(uint64_t a1)
{
  [*(a1 + 32) _setPhraseSpotterBypassing:*(a1 + 56)];
  if (setPhraseSpotterBypassing_timeout_timestamp___timer)
  {
    dispatch_source_cancel(setPhraseSpotterBypassing_timeout_timestamp___timer);
    v2 = setPhraseSpotterBypassing_timeout_timestamp___timer;
    setPhraseSpotterBypassing_timeout_timestamp___timer = 0;
  }

  if (*(a1 + 56) == 1 && *(a1 + 48) > 0.0)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, setPhraseSpotterBypassing_timeout_timestamp___queue);
    v4 = setPhraseSpotterBypassing_timeout_timestamp___timer;
    setPhraseSpotterBypassing_timeout_timestamp___timer = v3;

    v5 = setPhraseSpotterBypassing_timeout_timestamp___timer;
    v6 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v7 = setPhraseSpotterBypassing_timeout_timestamp___timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __63__VTXPCConnection_setPhraseSpotterBypassing_timeout_timestamp___block_invoke_2;
    handler[3] = &unk_2784ECDF8;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(setPhraseSpotterBypassing_timeout_timestamp___timer);
    objc_destroyWeak(&v9);
  }
}

void __63__VTXPCConnection_setPhraseSpotterBypassing_timeout_timestamp___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "::: Timeout!! PhraseSpotter should be NOT bypassed", v3, 2u);
    }

    [WeakRetained _setPhraseSpotterBypassing:0];
  }
}

uint64_t __63__VTXPCConnection_setPhraseSpotterBypassing_timeout_timestamp___block_invoke()
{
  setPhraseSpotterBypassing_timeout_timestamp___queue = dispatch_queue_create("phrasespotter assertion queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "[VTXPCConnection enableVoiceTrigger:withAssertion:timestamp:]";
    v19 = 1026;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "::: %{public}s enable: %{public}d reason: %{public}@", buf, 0x1Cu);
  }

  if (enableVoiceTrigger_withAssertion_timestamp__onceToken == -1)
  {
    if (v8)
    {
LABEL_5:
      v10 = enableVoiceTrigger_withAssertion_timestamp___queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__VTXPCConnection_enableVoiceTrigger_withAssertion_timestamp___block_invoke_4;
      v12[3] = &unk_2784ECDD0;
      v16 = v6;
      v15 = a5;
      v13 = v8;
      v14 = self;
      dispatch_sync(v10, v12);

      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&enableVoiceTrigger_withAssertion_timestamp__onceToken, &__block_literal_global_6407);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring request to enable/disable voice trigger with nil reason.", buf, 2u);
  }

LABEL_9:
}

void __62__VTXPCConnection_enableVoiceTrigger_withAssertion_timestamp___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [enableVoiceTrigger_withAssertion_timestamp__sTimestampsByReason objectForKey:*(a1 + 32)];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v4 = @"Enabled";
    }

    else
    {
      v4 = @"Disabled";
    }

    v5 = *(a1 + 32);
    v6 = enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons;
    v7 = v3;
    v8 = [v6 count];
    v9 = *(a1 + 48);
    v16 = 138544642;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    v20 = 2050;
    v21 = v8;
    v22 = 2114;
    v23 = enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons;
    v24 = 2114;
    v25 = v2;
    v26 = 2050;
    v27 = v9;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Asserting that VoiceTrigger should be %{public}@ with reason: %{public}@. Existing assertions (%{public}lu): %{public}@; times: %{public}@ vs %{public}f", &v16, 0x3Eu);
  }

  [v2 doubleValue];
  if (v10 >= *(a1 + 48))
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring request to enable/disable voice trigger - time order violation.", &v16, 2u);
    }
  }

  else
  {
    v11 = enableVoiceTrigger_withAssertion_timestamp__sTimestampsByReason;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v11 setObject:v12 forKey:*(a1 + 32)];

    if (*(a1 + 56) == 1)
    {
      v13 = [enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons count];
      [enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons addObject:*(a1 + 32)];
      [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
      if (!v13)
      {
        v14 = +[VTSiriAssertionMonitor sharedInstance];
        [v14 enableAssertionReceived];
LABEL_14:
      }
    }

    else
    {
      [enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons removeObject:*(a1 + 32)];
      [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
      if (![enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons count])
      {
        v14 = +[VTSiriAssertionMonitor sharedInstance];
        [v14 disableAssertionReceived];
        goto LABEL_14;
      }
    }
  }
}

uint64_t __62__VTXPCConnection_enableVoiceTrigger_withAssertion_timestamp___block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons;
  enableVoiceTrigger_withAssertion_timestamp__sRegisteredEnableReasons = v0;

  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = enableVoiceTrigger_withAssertion_timestamp__sTimestampsByReason;
  enableVoiceTrigger_withAssertion_timestamp__sTimestampsByReason = v2;

  enableVoiceTrigger_withAssertion_timestamp___queue = dispatch_queue_create("voicetrigger assertion queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)getTestResponse:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[VTXPCConnection getTestResponse:]";
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "::: %{public}s", &v7, 0xCu);
  }

  if (v3)
  {
    v3[2](v3, v5);
  }
}

+ (void)initialize
{
  if (VTLogInitIfNeeded_once != -1)
  {
    dispatch_once(&VTLogInitIfNeeded_once, &__block_literal_global_30);
  }
}

@end