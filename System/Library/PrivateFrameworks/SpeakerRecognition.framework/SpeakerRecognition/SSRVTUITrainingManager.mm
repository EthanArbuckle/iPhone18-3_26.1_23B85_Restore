@interface SSRVTUITrainingManager
+ (SSRVTUITrainingManager)trainingManagerWithLocaleID:(id)a3 withAppDomain:(id)a4 withSiriSharedUserId:(id)a5;
+ (id)sharedtrainingSessionQueue;
- (BOOL)CSVTUITrainingSession:(id)a3 hasTrainUtterance:(id)a4 languageCode:(id)a5 payload:(BOOL)a6;
- (BOOL)_createAudioAnalyzer;
- (BOOL)_otaAssetsAvailable;
- (BOOL)_setupAudioSession;
- (BOOL)_shouldShowHeadsetDisconnectionMessage;
- (BOOL)_startAudioSession;
- (BOOL)_stopAudioSession;
- (BOOL)cancelTrainingForID:(int64_t)a3;
- (BOOL)createKeywordDetector;
- (SSRVTUITrainingManager)initWithLocaleIdentifier:(id)a3 withAppDomain:(id)a4 withSiriSharedUserId:(id)a5 withAudioProviderSelector:(id)a6 shouldTrainViaXPC:(BOOL)a7;
- (SSRVTUITrainingManagerDelegate)delegate;
- (SSRVoiceProfile)voiceProfile;
- (id)_fetchPreInstalledSecureAsset;
- (id)_getAudioToneFileName:(int)a3;
- (id)_secureAssetWithAssetResourcePathURL:(id)a3 assetFileName:(id)a4;
- (id)cleanupWithCompletion:(id)a3;
- (id)updateTrainingManagerForDevice:(unint64_t)a3 trainingDeviceUUIDList:(id)a4;
- (int64_t)trainUtterance:(int64_t)a3 shouldUseASR:(BOOL)a4 mhUUID:(id)a5 completionWithResult:(id)a6;
- (unint64_t)_audioSource;
- (unint64_t)_validateRecordingStartHostTime:(unint64_t)a3;
- (unint64_t)audioSource;
- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)a3;
- (void)CSVTUITrainingSessionRMSAvailable:(float)a3;
- (void)CSVTUITrainingSessionStopListen;
- (void)_createAudioSessionRecorderWithAudioProviderSelector:(id)a3;
- (void)_destroyAudioSession;
- (void)_fetchCurrentAsset;
- (void)_logSessionSummary;
- (void)_resetAudioAnalyzer;
- (void)_updateAttemptForPageNumber:(unint64_t)a3;
- (void)audioSessionDidStartRecording:(BOOL)a3 error:(id)a4;
- (void)audioSessionDidStopRecording:(int64_t)a3;
- (void)audioSessionErrorDidOccur:(id)a3;
- (void)audioSessionRecordBufferAvailable:(id)a3;
- (void)audioSessionUnsupportedAudioRoute;
- (void)closeSessionBeforeStartWithStatus:(int)a3 successfully:(BOOL)a4 completionWithResult:(id)a5;
- (void)closeSessionBeforeStartWithStatus:(int)a3 successfully:(BOOL)a4 withCompletion:(id)a5;
- (void)createSpeechRecognizer;
- (void)destroySpeakerTrainer;
- (void)didDetectForceEndPoint;
- (void)endpointer:(id)a3 didDetectHardEndpointAtTime:(double)a4;
- (void)endpointer:(id)a3 didDetectStartpointAtTime:(double)a4;
- (void)getAudioSessionID:(id)a3;
- (void)playSoundEffectWithAudioTone:(int)a3;
- (void)playSoundsEffect:(int64_t)a3;
- (void)prepareWithCompletion:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setRecordingStartHostTime:(unint64_t)a3;
- (void)setSuspendAudio:(BOOL)a3;
- (void)startRMS;
- (void)stopRMS;
@end

@implementation SSRVTUITrainingManager

- (SSRVTUITrainingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)a3
{
  if (self->_shouldTrainViaXPC)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v10 = objc_loadWeakRetained(&self->_delegate);
        *&v9 = a3;
        [v10 VTUITrainingManagerFeedLevel:v9];
      }
    }
  }
}

- (void)didDetectForceEndPoint
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SSRVTUITrainingManager_didDetectForceEndPoint__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__SSRVTUITrainingManager_didDetectForceEndPoint__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 didDetectEndOfSpeech:2];
    }
  }
}

- (void)endpointer:(id)a3 didDetectHardEndpointAtTime:(double)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SSRVTUITrainingManager_endpointer_didDetectHardEndpointAtTime___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __65__SSRVTUITrainingManager_endpointer_didDetectHardEndpointAtTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 didDetectEndOfSpeech:1];
    }

    v2 = *(a1 + 32);
  }

  return [v2 _resetAudioAnalyzer];
}

- (void)endpointer:(id)a3 didDetectStartpointAtTime:(double)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRVTUITrainingManager_endpointer_didDetectStartpointAtTime___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__SSRVTUITrainingManager_endpointer_didDetectStartpointAtTime___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 didDetectBeginOfSpeech];
    }
  }
}

- (void)audioSessionUnsupportedAudioRoute
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRVTUITrainingManager_audioSessionUnsupportedAudioRoute__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SSRVTUITrainingManager_audioSessionUnsupportedAudioRoute__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 audioSessionUnsupportedAudioRoute];
    }
  }
}

- (void)audioSessionErrorDidOccur:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SSRVTUITrainingManager_audioSessionErrorDidOccur___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __52__SSRVTUITrainingManager_audioSessionErrorDidOccur___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionErrorDidOccur:*(a1 + 40)];
    }
  }
}

- (void)audioSessionRecordBufferAvailable:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SSRVTUITrainingManager_audioSessionRecordBufferAvailable___block_invoke;
  v7[3] = &unk_278579350;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __60__SSRVTUITrainingManager_audioSessionRecordBufferAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  v4 = *(a1 + 40);
  v5 = v4[19];
  v6 = v2 / v3;
  if (v5)
  {
    [v5 getZeroStatisticsFromBuffer:*(a1 + 32) entireSamples:v6];
    v4 = *(a1 + 40);
  }

  if (v4[5])
  {
    v7 = objc_alloc(MEMORY[0x277D01600]);
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    LOBYTE(v12) = [MEMORY[0x277D016E0] inputRecordingIsFloat];
    v10 = [v7 initWithData:v8 numChannels:1 numSamples:v6 sampleByteDepth:v9 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v12];
    [*(*(a1 + 40) + 40) processAudioSamplesAsynchronously:v10];
    [*(*(a1 + 40) + 232) addSamples:objc_msgSend(*(a1 + 32) numSamples:{"bytes"), v6}];

    v4 = *(a1 + 40);
  }

  v11 = v4[8];
  if (v11)
  {
    v13 = v11;
    if (objc_opt_respondsToSelector())
    {
      [v13 audioSessionRecordBufferAvailable:*(a1 + 32)];
    }
  }
}

- (void)audioSessionDidStopRecording:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SSRVTUITrainingManager_audioSessionDidStopRecording___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __55__SSRVTUITrainingManager_audioSessionDidStopRecording___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionDidStopRecording:*(a1 + 40)];
    }
  }

  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRVTUITrainingManager audioSessionDidStopRecording:]_block_invoke";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s audioSessionDidStopRecording", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionDidStartRecording:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRVTUITrainingManager_audioSessionDidStartRecording_error___block_invoke;
  block[3] = &unk_278578210;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __62__SSRVTUITrainingManager_audioSessionDidStartRecording_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionDidStartRecording:*(a1 + 48) error:*(a1 + 40)];
    }
  }
}

- (BOOL)CSVTUITrainingSession:(id)a3 hasTrainUtterance:(id)a4 languageCode:(id)a5 payload:(BOOL)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = +[SSRVoiceProfileComposer sharedTrainer];
  profile = self->_profile;
  currentAsset = self->_currentAsset;
  v17 = 0;
  v11 = [v8 addUtterance:v7 toProfile:profile withAsset:currentAsset error:&v17];

  v12 = v17;
  if ((v11 & 1) == 0)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[SSRVTUITrainingManager CSVTUITrainingSession:hasTrainUtterance:languageCode:payload:]";
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed to save explicit utterance", buf, 0xCu);
    }
  }

  if (CSIsInternalBuild())
  {
    v16 = v12;
    AnalyticsSendEventLazy();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

id __87__SSRVTUITrainingManager_CSVTUITrainingSession_hasTrainUtterance_languageCode_payload___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"utteranceAdditionErrorCode";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)CSVTUITrainingSessionStopListen
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SSRVTUITrainingManager CSVTUITrainingSessionStopListen]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop Listening", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 VTUITrainingManagerStopListening];
    }
  }

  if (self->_shouldUseRecordingStartHostTime)
  {
    [(SSRVTUITrainingManager *)self _stopAudioSession];
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SSRVTUITrainingManager CSVTUITrainingSessionStopListen]";
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Stopping audio session", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)CSVTUITrainingSessionRMSAvailable:(float)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      *&v9 = a3;
      [v10 VTUITrainingManagerFeedLevel:v9];
    }
  }
}

- (void)stopRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SSRVTUITrainingManager_stopRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __33__SSRVTUITrainingManager_stopRMS__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 160) == 1)
  {
    return [*(v1 + 168) stopRMS];
  }

  *(v1 + 8) = 0;
  return result;
}

- (void)startRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SSRVTUITrainingManager_startRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __34__SSRVTUITrainingManager_startRMS__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 160) == 1)
  {
    return [*(v1 + 168) startRMS];
  }

  *(v1 + 8) = 1;
  return result;
}

- (void)setSuspendAudio:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SSRVTUITrainingManager setSuspendAudio:]";
    v12 = 1026;
    v13 = v3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Setting suspendAudio:[%{public}d]", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SSRVTUITrainingManager_setSuspendAudio___block_invoke;
  v8[3] = &unk_278579460;
  v8[4] = self;
  v9 = v3;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __42__SSRVTUITrainingManager_setSuspendAudio___block_invoke(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(result + 32);
  if (*(v2 + 80) == 1)
  {
    if ((*(result + 40) & 1) == 0)
    {
      v3 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[SSRVTUITrainingManager setSuspendAudio:]_block_invoke";
        _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Resume training", &v6, 0xCu);
        v2 = *(v1 + 32);
      }

      result = [*(v2 + 64) resumeTraining];
    }
  }

  else if (*(result + 40))
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SSRVTUITrainingManager setSuspendAudio:]_block_invoke";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Suspend training", &v6, 0xCu);
      v2 = *(v1 + 32);
    }

    result = [*(v2 + 64) suspendTraining];
  }

  *(*(v1 + 32) + 80) = *(v1 + 40);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)_validateRecordingStartHostTime:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = mach_absolute_time();
  if (v4 >= a3)
  {
    [MEMORY[0x277D01798] hostTimeToSeconds:v4 - a3];
    v7 = v6;
    if (v6 > 4.0)
    {
      v8 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[SSRVTUITrainingManager _validateRecordingStartHostTime:]";
        v14 = 2048;
        v15 = v7;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s Asked to record %f secs in past, capping it", &v12, 0x16u);
      }

      LODWORD(v9) = 4.0;
      a3 = v4 - [MEMORY[0x277D01798] secondsToHostTime:v9];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SSRVTUITrainingManager _validateRecordingStartHostTime:]";
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s Asked to record in the future, using currentTime", &v12, 0xCu);
    }

    a3 = v4;
  }

  v10 = *MEMORY[0x277D85DE8];
  return a3;
}

- (void)setRecordingStartHostTime:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SSRVTUITrainingManager_setRecordingStartHostTime___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __52__SSRVTUITrainingManager_setRecordingStartHostTime___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x277D85DE8];

    [v3 setRecordingStartHostTime:v4];
  }

  else
  {
    v6 = [v2 _validateRecordingStartHostTime:*(a1 + 40)];
    *(*(a1 + 32) + 216) = 1;
    *(*(a1 + 32) + 208) = v6;
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[SSRVTUITrainingManager setRecordingStartHostTime:]_block_invoke";
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Setting recording host time to %llu, requested host time %llu", &v10, 0x20u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)getAudioSessionID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SSRVTUITrainingManager_getAudioSessionID___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __44__SSRVTUITrainingManager_getAudioSessionID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x277D85DE8];

    return [v3 getAudioSessionID:v4];
  }

  else
  {
    v7 = [*(v2 + 32) getAudioSessionID];
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SSRVTUITrainingManager getAudioSessionID:]_block_invoke";
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching audioSessionID: %lu", &v10, 0x16u);
    }

    result = (*(*(a1 + 40) + 16))();
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (BOOL)_startAudioSession
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SSRVTUITrainingManager _startAudioSession]";
    v11 = 2082;
    v12 = "[SSRVTUITrainingManager _startAudioSession]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v9, 0x16u);
  }

  audioSession = self->_audioSession;
  if (audioSession)
  {
    if (([(CSVTUIAudioSession *)audioSession isRecording]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (self->_shouldUseRecordingStartHostTime)
    {
      [(CSVTUIAudioSession *)self->_audioSession setAudioRecordingHostTime:self->_audioStartRecordingHostTime];
    }

    if (([(CSVTUIAudioSession *)self->_audioSession startRecording]& 1) != 0)
    {
LABEL_8:
      LOBYTE(audioSession) = 1;
    }

    else
    {
      v6 = *v3;
      LODWORD(audioSession) = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
      if (audioSession)
      {
        v9 = 136315138;
        v10 = "[SSRVTUITrainingManager _startAudioSession]";
        _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s AudioSession StartRecording Failed", &v9, 0xCu);
        LOBYTE(audioSession) = 0;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return audioSession;
}

- (BOOL)_shouldShowHeadsetDisconnectionMessage
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVTUITrainingManager _shouldShowHeadsetDisconnectionMessage]";
    v9 = 2082;
    v10 = "[SSRVTUITrainingManager _shouldShowHeadsetDisconnectionMessage]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v7, 0x16u);
  }

  audioSession = self->_audioSession;
  if (audioSession)
  {
    LOBYTE(audioSession) = [(CSVTUIAudioSession *)audioSession hasCorrectAudioRoute]^ 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return audioSession;
}

- (void)_resetAudioAnalyzer
{
  audioAnalyzer = self->_audioAnalyzer;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  [(CSVTUIEndpointAnalyzer *)audioAnalyzer resetForNewRequestWithSampleRate:v4];
  [(CSVTUIEndpointAnalyzer *)self->_audioAnalyzer setStartWaitTime:5.0];
  v5 = self->_audioAnalyzer;

  [(CSVTUIEndpointAnalyzer *)v5 setEndWaitTime:0.77];
}

- (BOOL)_createAudioAnalyzer
{
  if (self->_audioSession)
  {
    v3 = objc_alloc_init(CSVTUIEndpointAnalyzer);
    audioAnalyzer = self->_audioAnalyzer;
    self->_audioAnalyzer = v3;

    v5 = self->_audioAnalyzer;
    if (v5)
    {
      [(CSVTUIEndpointAnalyzer *)v5 setDelegate:self];
      [(SSRVTUITrainingManager *)self _resetAudioAnalyzer];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_setupAudioSession
{
  [(CSVTUIAudioSession *)self->_audioSession setDelegate:self];
  audioSession = self->_audioSession;

  return [(CSVTUIAudioSession *)audioSession prepareRecord];
}

- (unint64_t)_audioSource
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    return [(CSVTUIAudioSession *)audioSession audioSource];
  }

  else
  {
    return 6;
  }
}

- (unint64_t)audioSource
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 6;
  queue = self->_queue;
  if (self->_shouldTrainViaXPC)
  {
    v3 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke;
    v7[3] = &unk_2785797D0;
    v7[4] = self;
    v7[5] = &v8;
  }

  else
  {
    v3 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke_3;
    v6[3] = &unk_2785797D0;
    v6[4] = self;
    v6[5] = &v8;
  }

  dispatch_sync(queue, v3);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __37__SSRVTUITrainingManager_audioSource__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke_2;
  v3[3] = &unk_2785781C0;
  v3[4] = *(a1 + 40);
  return [v1 audioSourceWithCompletion:v3];
}

uint64_t __37__SSRVTUITrainingManager_audioSource__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _audioSource];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)closeSessionBeforeStartWithStatus:(int)a3 successfully:(BOOL)a4 completionWithResult:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[SSRVTUITrainingManager closeSessionBeforeStartWithStatus:successfully:completionWithResult:]";
    v19 = 1026;
    v20 = a3;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Called with status : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke;
  v13[3] = &unk_278578198;
  v15 = a3;
  v14 = v8;
  v16 = a4;
  v11 = v8;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke_2;
  v2[3] = &unk_278578198;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5 = *(a1 + 44);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke_2(uint64_t a1)
{
  [[CSVTUITrainingResult alloc] initWithSessionId:0 sessionStatus:*(a1 + 40) audioStatus:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 44);
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)closeSessionBeforeStartWithStatus:(int)a3 successfully:(BOOL)a4 withCompletion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[SSRVTUITrainingManager closeSessionBeforeStartWithStatus:successfully:withCompletion:]";
    v19 = 1026;
    v20 = a3;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Called with status : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke;
  v13[3] = &unk_278578198;
  v14 = v8;
  v15 = a3;
  v16 = a4;
  v11 = v8;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke_2;
  v2[3] = &unk_278578198;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40), *(a1 + 44), 0);
  }

  return result;
}

- (BOOL)cancelTrainingForID:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[SSRVTUITrainingManager cancelTrainingForID:]";
    v14 = 2082;
    v15 = "[SSRVTUITrainingManager cancelTrainingForID:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}s Canceling Training", buf, 0x16u);
  }

  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke;
    v11[3] = &unk_278578170;
    v11[4] = self;
    v11[5] = a3;
    v7 = v11;
  }

  else
  {
    [(CSVTUITrainingSession *)self->_currentTrainingSession closeSessionWithStatus:6 successfully:0];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke_2;
    block[3] = &unk_2785797A8;
    block[4] = self;
    v7 = block;
  }

  dispatch_async(queue, v7);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _stopAudioSession];
  v2 = *(*(a1 + 32) + 232);

  return [v2 endAudio];
}

- (void)playSoundEffectWithAudioTone:(int)a3
{
  shouldTrainViaXPC = self->_shouldTrainViaXPC;
  queue = self->_queue;
  if (shouldTrainViaXPC)
  {
    v6 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v7 = __55__SSRVTUITrainingManager_playSoundEffectWithAudioTone___block_invoke;
  }

  else
  {
    v6 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v7 = __55__SSRVTUITrainingManager_playSoundEffectWithAudioTone___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_278579190;
  v6[4] = self;
  *(v6 + 10) = a3;
  dispatch_async(queue, v6);
}

- (void)playSoundsEffect:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 >= 6)
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[SSRVTUITrainingManager playSoundsEffect:]";
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s Failed to find the audio tone", &v7, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = dword_225EA9E58[a3];
    v4 = *MEMORY[0x277D85DE8];

    [(SSRVTUITrainingManager *)self playSoundEffectWithAudioTone:v3];
  }
}

- (id)_getAudioToneFileName:(int)a3
{
  if (CSIsIOS())
  {
    if (a3 > 6)
    {
      return 0;
    }

    return off_278578230[a3];
  }

  v5 = CSIsOSX();
  result = 0;
  if (v5 && a3 < 7)
  {
    return off_278578230[a3];
  }

  return result;
}

- (void)_logSessionSummary
{
  v3 = [MEMORY[0x277D01908] sharedLogger];
  [v3 logSiriSetupEnrollmentSessionSummaryWithSiriSetupID:self->_mhUUID lastOpenedPage:LODWORD(self->_lastAttemptedUtterance) completedPage:(LODWORD(self->_lastAttemptedUtterance) - 1) pageAttemptsMap:self->_pageAttemptMap];
}

- (void)_updateAttemptForPageNumber:(unint64_t)a3
{
  pageAttemptMap = self->_pageAttemptMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)pageAttemptMap objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = self->_pageAttemptMap;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
    v14 = [v8 numberWithInteger:{objc_msgSend(v11, "integerValue") + 1}];
  }

  else
  {
    v14 = &unk_283933900;
  }

  v12 = self->_pageAttemptMap;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v12 setObject:v14 forKey:v13];
}

- (int64_t)trainUtterance:(int64_t)a3 shouldUseASR:(BOOL)a4 mhUUID:(id)a5 completionWithResult:(id)a6
{
  v7 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277D01970];
  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v33 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]";
    v34 = 2050;
    v35 = a3;
    v36 = 1026;
    v37 = v7;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s BEGIN num:%{public}ld use:%{public}d", buf, 0x1Cu);
  }

  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke;
    block[3] = &unk_278578120;
    block[4] = self;
    v30 = a3;
    v31 = v7;
    v28 = v10;
    v29 = v11;
    dispatch_async(queue, block);

    v15 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_4;
    v21[3] = &unk_278578148;
    v21[4] = self;
    objc_copyWeak(v24, &location);
    v22 = v10;
    v16 = v11;
    v25 = v7;
    v23 = v16;
    v24[1] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v21);
    v17 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionNumber = self->_sessionNumber;
      *buf = 136315394;
      v33 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]";
      v34 = 2050;
      v35 = sessionNumber;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s _sessionNumber [%{public}ld]", buf, 0x16u);
    }

    v15 = self->_sessionNumber;

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 168);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_2;
  v5[3] = &unk_2785780D0;
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 trainUtteranceViaXPC:v4 shouldUseASR:v3 mhUUID:v1 completionWithResult:v5];
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_5;
  v7[3] = &unk_278578148;
  objc_copyWeak(v11, (a1 + 56));
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = *(a1 + 48);
  v12 = *(a1 + 72);
  v6 = *(a1 + 64);
  v10 = v5;
  v11[1] = v6;
  dispatch_async(v2, v7);

  objc_destroyWeak(v11);
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_5(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D01970];
  if (v3)
  {
    objc_storeStrong((*(a1 + 40) + 144), v3);
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v44 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke_5";
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s CoreSpeech received the UUID from UI: %@", buf, 0x16u);
    }
  }

  if (!*(*(a1 + 40) + 48))
  {
    [WeakRetained createKeywordDetector];
  }

  if (([WeakRetained _setupAudioSession] & 1) == 0)
  {
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s AudioSession setup failed", buf, 0xCu);
    }

    [*(a1 + 40) _createAudioSessionRecorderWithAudioProviderSelector:*(*(a1 + 40) + 200)];
    goto LABEL_16;
  }

  if (!*(*(a1 + 40) + 40))
  {
    [WeakRetained _createAudioAnalyzer];
  }

  if ([WeakRetained _shouldShowHeadsetDisconnectionMessage])
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Has wrong audio routing, ask user to unplug headset", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 4;
    goto LABEL_17;
  }

  if (([WeakRetained _startAudioSession] & 1) == 0)
  {
    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Start Audio Session failed", buf, 0xCu);
    }

LABEL_16:
    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 5;
LABEL_17:
    [v9 closeSessionBeforeStartWithStatus:v10 successfully:0 completionWithResult:v8];
    goto LABEL_18;
  }

  v13 = MEMORY[0x277D01620];
  [MEMORY[0x277D01748] utteranceFileASBD];
  [MEMORY[0x277D01748] utteranceFileASBD];
  v14 = [v13 createAudioFileWriterForPHSTrainingWithInputFormat:buf outputFormat:v42];
  v15 = *(a1 + 40);
  v16 = *(v15 + 232);
  *(v15 + 232) = v14;

  if (*(a1 + 72) == 1)
  {
    [WeakRetained createSpeechRecognizer];
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = *(v18 + 104);
    *(v18 + 104) = 0;
  }

  v20 = *(*(a1 + 40) + 152);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  [v20 resetWithSampleRate:?];
  v21 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Resetting zero counter", buf, 0xCu);
  }

  v22 = *(a1 + 64);
  *(*(a1 + 40) + 192) = v22;
  if (v22 >= 1)
  {
    v23 = off_278577350;
  }

  else
  {
    v23 = off_278577348;
  }

  v24 = objc_alloc(*v23);
  v40 = *(a1 + 64);
  v41 = v24;
  v25 = *(a1 + 40);
  v26 = v25[9];
  v27 = v25[2];
  v28 = v25[3];
  v29 = v25[4];
  v30 = v25[6];
  v31 = v25[13];
  v32 = +[SSRVTUITrainingManager sharedtrainingSessionQueue];
  v33 = [v41 initWithUtteranceId:v40 sessionNumber:v26 Locale:v27 vtAssetConfigVersion:v28 audioSession:v29 keywordDetector:v30 speechRecognizer:v31 speechRecognitionRequest:0 sessionDelegate:v25 sessionDispatchQueue:v32 mhUUID:*(*(a1 + 40) + 144) zeroCounter:*(*(a1 + 40) + 152) completionWithResult:*(a1 + 48)];
  v34 = *(a1 + 40);
  v35 = *(v34 + 64);
  *(v34 + 64) = v33;

  v36 = *(a1 + 40);
  if (!*(v36 + 64))
  {
    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 3;
    goto LABEL_17;
  }

  [*(v36 + 56) addObject:?];
  [*(*(a1 + 40) + 64) startTraining];
  v37 = *(a1 + 40);
  if (*(v37 + 80) == 1)
  {
    [*(v37 + 64) suspendTraining];
    v37 = *(a1 + 40);
  }

  [v37 _updateAttemptForPageNumber:*(a1 + 64)];
  v38 = kCSVTUITrainingManagerSessionNo++;
  *(*(a1 + 40) + 72) = kCSVTUITrainingManagerSessionNo;
  v39 = *(a1 + 40);
  if (!*(v39 + 72))
  {
    kCSVTUITrainingManagerSessionNo = v38 + 2;
    *(v39 + 72) = v38 + 2;
  }

LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_2(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_3;
    v9[3] = &unk_2785780F8;
    v11 = v8;
    v13 = a3;
    v10 = v7;
    v12 = a4;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

uint64_t __65__SSRVTUITrainingManager_trainUtterance_shouldUseASR_completion___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    v7 = a2;
    v8 = [v7 sessionId];
    v9 = [v7 sessionStatus];

    v10 = *(v4 + 16);

    return v10(v4, v8, v9, a3, a4);
  }

  return result;
}

- (void)destroySpeakerTrainer
{
  keywordDetector = self->_keywordDetector;
  self->_keywordDetector = 0;

  currentAsset = self->_currentAsset;
  self->_currentAsset = 0;
}

- (id)cleanupWithCompletion:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[SSRVTUITrainingManager cleanupWithCompletion:]";
    v31 = 2082;
    v32 = "[SSRVTUITrainingManager cleanupWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}s Called", buf, 0x16u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke;
  v27[3] = &unk_2785795F0;
  v6 = v4;
  v28 = v6;
  v7 = MEMORY[0x22AA71400](v27);
  if (self->_shouldTrainViaXPC)
  {
    objc_initWeak(buf, self->_trainingServiceClient);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_26;
    block[3] = &unk_278578B98;
    block[4] = self;
    v25 = v7;
    objc_copyWeak(&v26, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v26);

    objc_destroyWeak(buf);
  }

  else
  {
    v9 = +[SSRAssetManager sharedManager];
    [v9 releaseAssetsLocksIfNecessary];

    currentAsset = self->_currentAsset;
    self->_currentAsset = 0;

    v11 = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_3;
    v23[3] = &unk_2785797A8;
    v23[4] = self;
    dispatch_async(v11, v23);
    v12 = CSIsOSX();
    v13 = self->_queue;
    if (v12)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_4;
      v22[3] = &unk_2785797A8;
      v22[4] = self;
      dispatch_async(v13, v22);
      dispatch_sync(self->_queue, &__block_literal_global_30);
      [(CSDispatchGroup *)self->_didStopWaitingGroup waitWithTimeout:dispatch_time(0, 2000000000)];
      v14 = self->_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_31;
      v20[3] = &unk_278579618;
      v20[4] = self;
      v21 = v7;
      dispatch_async(v14, v20);
      v15 = v21;
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_32;
      v18[3] = &unk_278579618;
      v18[4] = self;
      v19 = v7;
      dispatch_async(v13, v18);
      v15 = v19;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2;
    block[3] = &unk_2785795F0;
    v3 = v1;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_26(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2_27;
  v3[3] = &unk_2785780A8;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  [v2 cleanupViaXPCWithCompletion:v3];
  objc_destroyWeak(&v5);
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_4";
    v7 = 2082;
    v8 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_4";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s %{public}s async called", &v5, 0x16u);
  }

  [*(*(a1 + 32) + 136) enter];
  if (([*(a1 + 32) _stopAudioSession] & 1) == 0)
  {
    [*(*(a1 + 32) + 136) leave];
  }

  result = [*(a1 + 32) destroySpeakerTrainer];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_31(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Done waiting for didStop", &v5, 0xCu);
  }

  [*(a1 + 32) _destroyAudioSession];
  [*(*(a1 + 32) + 232) endAudio];
  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_32(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    v7 = 2082;
    v8 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s %{public}s async called", &v5, 0x16u);
  }

  [*(a1 + 32) _stopAudioSession];
  [*(a1 + 32) destroySpeakerTrainer];
  [*(a1 + 32) _destroyAudioSession];
  [*(*(a1 + 32) + 232) endAudio];
  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_28()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v0, OS_LOG_TYPE_DEFAULT, "%s Waiting for didStop", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2_27(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_2";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Called before completion called", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_fetchPreInstalledSecureAsset
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D018F8] isExclaveHardware])
  {
    v3 = objc_alloc(MEMORY[0x277D01F50]);
    v4 = [MEMORY[0x277D01F48] getBundle:0];
    v5 = [v3 init:v4];

    v6 = [v5 resourcePathURL:self->_locale];
    v7 = [MEMORY[0x277D01F48] getAssetFileName:0];
    v8 = MEMORY[0x277D01970];
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315907;
      v16 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      v21 = 2113;
      v22 = v6;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s preInstalledBundle:%@ config file name:%@ at path: %{private}@", &v15, 0x2Au);
      v9 = *v8;
    }

    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315651;
        v16 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
        v17 = 2112;
        v18 = v7;
        v19 = 2113;
        v20 = v6;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s Skipping operation to fetch VoiceTrigger secure asset with config file name:%@ at path: %{private}@", &v15, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315651;
        v16 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
        v17 = 2112;
        v18 = v7;
        v19 = 2113;
        v20 = v6;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Fetching VoiceTrigger secure asset with config file name:%@ at path: %{private}@", &v15, 0x20u);
      }

      v11 = [(SSRVTUITrainingManager *)self _secureAssetWithAssetResourcePathURL:v6 assetFileName:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_secureAssetWithAssetResourcePathURL:(id)a3 assetFileName:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x277D01F40];
    v7 = a4;
    v8 = a3;
    v4 = [[v6 alloc] initWithResourcePath:v8 assetFileName:v7 assetVersion:0 assetHash:0];
  }

  return v4;
}

- (BOOL)_otaAssetsAvailable
{
  v3 = objc_alloc_init(SSRUafAssetProvider);
  v4 = [(SSRUafAssetProvider *)v3 installedAssetOfType:0 forLanguageCode:self->_locale];
  v5 = [v4 assetVariant] == 2 && objc_msgSend(v4, "assetProvider") == 2;

  return v5;
}

- (void)_destroyAudioSession
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)audioSession releaseAudioSession];
  }
}

- (BOOL)_stopAudioSession
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)self->_audioSession stopRecording];
  }

  return audioSession != 0;
}

- (void)prepareWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke;
  v11[3] = &unk_278578080;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x22AA71400](v11);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_3;
  block[3] = &unk_278579618;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_2;
    v4[3] = &unk_278578058;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_4;
    v6[3] = &unk_278578080;
    v7 = *(a1 + 40);
    [v3 prepareWithCompletion:v6];
  }

  else
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[SSRVTUITrainingManager prepareWithCompletion:]_block_invoke_3";
      v10 = 2080;
      v11 = "[SSRVTUITrainingManager prepareWithCompletion:]_block_invoke_3";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s %s async called", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(v2 + 32) prepareRecord];
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)createSpeechRecognizer
{
  speechRecognizer = self->_speechRecognizer;
  if (speechRecognizer)
  {
    self->_speechRecognizer = 0;
  }

  v4 = objc_alloc(MEMORY[0x277CDCEF8]);
  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:self->_locale];
  v5 = [v4 initWithLocale:v7];
  v6 = self->_speechRecognizer;
  self->_speechRecognizer = v5;
}

- (BOOL)createKeywordDetector
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_locale)
  {
    currentAsset = self->_currentAsset;
    if (!currentAsset)
    {
      [(SSRVTUITrainingManager *)self _fetchCurrentAsset];
      currentAsset = self->_currentAsset;
    }

    v4 = [MEMORY[0x277D01958] decodeConfigFrom:currentAsset forFirstPassSource:0];
    if ([v4 useRecognizerCombination] && +[SSRUtils isMphVTUIKeywordDetectorSupportedPlatform](SSRUtils, "isMphVTUIKeywordDetectorSupportedPlatform"))
    {
      if ([MEMORY[0x277D018F8] supportsMphForLanguageCode:self->_locale])
      {
        v5 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
        v6 = [(CSVoiceTriggerUserSelectedPhrase *)v5 multiPhraseSelected];
      }

      else
      {
        v6 = 0;
      }

      v7 = [[CSVTUITwoPassKeywordDetector alloc] initWithAsset:self->_currentAsset supportMph:v6];
    }

    else
    {
      v7 = [[CSVTUIKeywordDetector alloc] initWithAsset:self->_currentAsset];
    }

    keywordDetector = self->_keywordDetector;
    self->_keywordDetector = &v7->super;

    v11 = self->_keywordDetector;
    v9 = v11 != 0;
    if (!v11)
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "[SSRVTUITrainingManager createKeywordDetector]";
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Creation of Keyword Detector failed.", &v15, 0xCu);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[SSRVTUITrainingManager createKeywordDetector]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s No locale set when creating phrase spotter.", &v15, 0xCu);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setLocaleIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__SSRVTUITrainingManager_setLocaleIdentifier___block_invoke;
    v14[3] = &unk_278579350;
    v14[4] = self;
    v15 = v5;
    dispatch_async(queue, v14);
  }

  else
  {
    objc_storeStrong(&self->_locale, a3);
    [(SSRVTUITrainingManager *)self _fetchCurrentAsset];
    if (self->_keywordDetector)
    {
      [(SSRVTUITrainingManager *)self createKeywordDetector];
    }

    currentAsset = self->_currentAsset;
    if (currentAsset)
    {
      v9 = [(CSAsset *)currentAsset configVersion];
      vtAssetConfigVersion = self->_vtAssetConfigVersion;
      self->_vtAssetConfigVersion = v9;
    }

    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      locale = self->_locale;
      *buf = 136315394;
      v17 = "[SSRVTUITrainingManager setLocaleIdentifier:]";
      v18 = 2114;
      v19 = locale;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Locale: [%{public}@]", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCurrentAsset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[SSRAssetManager sharedManager];
  v4 = [v3 installedAssetOfType:0 forLanguage:self->_locale];
  currentAsset = self->_currentAsset;
  self->_currentAsset = v4;

  v6 = MEMORY[0x277D01970];
  if (!self->_currentAsset)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SSRVTUITrainingManager _fetchCurrentAsset]";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cannot find voicetrigger asset from asset manager, let's fallback to asset in the framework", &v13, 0xCu);
    }

    v8 = [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
    v9 = self->_currentAsset;
    self->_currentAsset = v8;
  }

  v10 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_currentAsset;
    v13 = 136315394;
    v14 = "[SSRVTUITrainingManager _fetchCurrentAsset]";
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerAsset found: %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)updateTrainingManagerForDevice:(unint64_t)a3 trainingDeviceUUIDList:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
  {
    v9 = 136315651;
    v10 = "[SSRVTUITrainingManager updateTrainingManagerForDevice:trainingDeviceUUIDList:]";
    v11 = 2048;
    v12 = a3;
    v13 = 2113;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_INFO, "%s Remote device type: %zu, Remote device UUID list: %{private}@", &v9, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_createAudioSessionRecorderWithAudioProviderSelector:(id)a3
{
  v8 = a3;
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)audioSession setDelegate:0];
    [(CSVTUIAudioSession *)self->_audioSession releaseAudioSession];
    v5 = self->_audioSession;
  }

  else
  {
    v5 = 0;
  }

  self->_audioSession = 0;

  v6 = [[CSVTUIAudioSessionRecorder alloc] initWithAudioProviderSelector:v8];
  v7 = self->_audioSession;
  self->_audioSession = v6;

  [(CSVTUIAudioSession *)self->_audioSession setDelegate:self];
}

- (SSRVTUITrainingManager)initWithLocaleIdentifier:(id)a3 withAppDomain:(id)a4 withSiriSharedUserId:(id)a5 withAudioProviderSelector:(id)a6 shouldTrainViaXPC:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v35.receiver = self;
  v35.super_class = SSRVTUITrainingManager;
  v16 = [(SSRVTUITrainingManager *)&v35 init];
  if (v16)
  {
    SSRLogInitIfNeeded();
    v17 = dispatch_queue_create("com.apple.VoiceTriggerUI.TrainingManager", 0);
    queue = v16->_queue;
    v16->_queue = v17;

    v16->_shouldTrainViaXPC = v7;
    if (v7)
    {
      v19 = [[SSRVTUITrainingServiceClient alloc] initWithDelegate:v16];
      trainingServiceClient = v16->_trainingServiceClient;
      v16->_trainingServiceClient = v19;

      [(SSRVTUITrainingServiceClient *)v16->_trainingServiceClient setupWithLocaleID:v12 appDomain:v13 siriSharedUserId:v14];
      v16->_shouldUseRecordingStartHostTime = 0;
    }

    else
    {
      objc_storeStrong(&v16->_audioProviderSelector, a6);
      [(SSRVTUITrainingManager *)v16 setLocaleIdentifier:v12];
      [(SSRVTUITrainingManager *)v16 _createAudioSessionRecorderWithAudioProviderSelector:v16->_audioProviderSelector];
      v16->_suspendAudio = 0;
      keywordDetector = v16->_keywordDetector;
      v16->_keywordDetector = 0;

      cleanupCompletion = v16->_cleanupCompletion;
      v16->_cleanupCompletion = 0;

      v23 = objc_alloc_init(MEMORY[0x277D01710]);
      didStopWaitingGroup = v16->_didStopWaitingGroup;
      v16->_didStopWaitingGroup = v23;

      v25 = objc_alloc(MEMORY[0x277D016C0]);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v28 = [v25 initWithToken:v27 sampleRate:1 numChannels:?];
      audioZeroCounter = v16->_audioZeroCounter;
      v16->_audioZeroCounter = v28;

      v30 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v12 withAppDomain:v13];
      profile = v16->_profile;
      v16->_profile = v30;

      if (v14)
      {
        [(SSRVoiceProfile *)v16->_profile setSharedSiriProfileId:v14];
      }
    }

    v16->_lastAttemptedUtterance = -1;
    v32 = [MEMORY[0x277CBEB38] dictionary];
    pageAttemptMap = v16->_pageAttemptMap;
    v16->_pageAttemptMap = v32;
  }

  return v16;
}

- (SSRVoiceProfile)voiceProfile
{
  if (self->_shouldTrainViaXPC)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2041;
    v10 = __Block_byref_object_dispose__2042;
    v11 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__SSRVTUITrainingManager_voiceProfile__block_invoke;
    v5[3] = &unk_2785797D0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = self->_profile;
  }

  return v3;
}

uint64_t __38__SSRVTUITrainingManager_voiceProfile__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__SSRVTUITrainingManager_voiceProfile__block_invoke_2;
  v3[3] = &unk_278578030;
  v3[4] = *(a1 + 40);
  return [v1 voiceProfileWithCompletion:v3];
}

+ (id)sharedtrainingSessionQueue
{
  if (sharedtrainingSessionQueue_onceToken != -1)
  {
    dispatch_once(&sharedtrainingSessionQueue_onceToken, &__block_literal_global_2049);
  }

  v3 = sharedtrainingSessionQueue_sharedQueue;

  return v3;
}

uint64_t __52__SSRVTUITrainingManager_sharedtrainingSessionQueue__block_invoke()
{
  sharedtrainingSessionQueue_sharedQueue = dispatch_queue_create("com.apple.VoiceTriggerUI.TrainingSessionQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (SSRVTUITrainingManager)trainingManagerWithLocaleID:(id)a3 withAppDomain:(id)a4 withSiriSharedUserId:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  SSRLogInitIfNeeded();
  v10 = -[SSRVTUITrainingManager initWithLocaleIdentifier:withAppDomain:withSiriSharedUserId:withAudioProviderSelector:shouldTrainViaXPC:]([SSRVTUITrainingManager alloc], "initWithLocaleIdentifier:withAppDomain:withSiriSharedUserId:withAudioProviderSelector:shouldTrainViaXPC:", v9, v8, v7, 0, [MEMORY[0x277D018F8] isExclaveHardware]);

  return v10;
}

@end