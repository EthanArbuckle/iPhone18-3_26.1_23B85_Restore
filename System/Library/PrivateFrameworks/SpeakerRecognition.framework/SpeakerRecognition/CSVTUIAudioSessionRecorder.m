@interface CSVTUIAudioSessionRecorder
- (BOOL)_hasCorrectInputAudioRoute;
- (BOOL)_hasCorrectInputAudioRouteFromHardwareConfiguration:(int64_t)a3;
- (BOOL)_hasCorrectOutputAudioRoute;
- (BOOL)prepareRecord;
- (BOOL)startRecording;
- (CSVTUIAudioSessionDelegate)delegate;
- (CSVTUIAudioSessionRecorder)initWithAudioProvider:(id)a3 forceSupportsRemoteDarwinDisplay:(BOOL)a4;
- (CSVTUIAudioSessionRecorder)initWithAudioProviderSelector:(id)a3;
- (id)_forceFetchAudioProvider:(BOOL)a3 recordContext:(id)a4;
- (int64_t)convertStopReason:(int64_t)a3;
- (unint64_t)audioSource;
- (unsigned)getAudioSessionID;
- (void)_handleDidStopWithReason:(int64_t)a3;
- (void)_updateRemoteDarwinDisplayConnectedIfNeeded;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didHardwareConfigurationChange:(int64_t)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)releaseAudioSession;
- (void)setAudioRecordingHostTime:(unint64_t)a3;
- (void)stopRecording;
- (void)updateAudioRecorderForTrainingDevice:(unint64_t)a3 deviceUUIDs:(id)a4;
@end

@implementation CSVTUIAudioSessionRecorder

- (CSVTUIAudioSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateRemoteDarwinDisplayConnectedIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if ((CSIsIPad() & 1) != 0 || self->_forceSupportsRemoteDarwinDisplay)
  {
    v3 = [MEMORY[0x277D26E60] sharedAVSystemController];
    v4 = [v3 pickableRoutesForCategory:@"PlayAndRecord" andMode:@"SpeechRecognition"];

    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v22 = "[CSVTUIAudioSessionRecorder _updateRemoteDarwinDisplayConnectedIfNeeded]";
      v23 = 2113;
      v24 = v4;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Available audio routes %{private}@", buf, 0x16u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      v9 = MEMORY[0x277D26AE8];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [MEMORY[0x277D018F8] audioPortSubtypeAsString:{1781740087, v16}];
          v13 = [v11 objectForKeyedSubscript:*v9];
          v14 = v13;
          if (v12 && [v13 isEqualToString:v12])
          {

            LOBYTE(v7) = 1;
            goto LABEL_16;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    self->_isRemoteDarwinDisplayConnected = v7;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)audioStreamProvider:(id)a3 didHardwareConfigurationChange:(int64_t)a4
{
  if (![(CSVTUIAudioSessionRecorder *)self _hasCorrectInputAudioRouteFromHardwareConfiguration:a4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 audioSessionUnsupportedAudioRoute];
      }
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSVTUIAudioSessionRecorder_audioStreamProvider_didHardwareConfigurationChange___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  [(CSVTUIAudioSessionRecorder *)self _handleDidStopWithReason:[(CSVTUIAudioSessionRecorder *)self convertStopReason:a4]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 audioSessionErrorDidOccur:0];
    }
  }
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  v6 = [v5 numSamples];
  v14 = [v5 data];

  powerMeter = self->_powerMeter;
  v8 = v14;
  -[CSAudioPowerMeter processShortBuffer:stride:inFrameToProcess:](powerMeter, "processShortBuffer:stride:inFrameToProcess:", [v14 bytes], 1, v6);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 audioSessionRecordBufferAvailable:v14];
    }
  }
}

- (void)_handleDidStopWithReason:(int64_t)a3
{
  [(CSAudioPowerMeter *)self->_powerMeter reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 audioSessionDidStopRecording:a3];
    }
  }
}

- (unint64_t)audioSource
{
  if (CSIsOSX())
  {
    return 0;
  }

  audioProvider = self->_audioProvider;
  if (!audioProvider)
  {
    return 6;
  }

  v5 = [(CSAudioProvider *)audioProvider playbackRoute];
  if (!v5)
  {
    return 6;
  }

  v6 = v5;
  if ([v5 isEqualToString:*MEMORY[0x277CB81F0]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CB81D8]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CB8208]))
  {
    v3 = 1;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CB8160]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CB8170]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CB8180]))
  {
    v3 = 2;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CB8148]])
  {
    v3 = 3;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CB81C8]])
  {
    v3 = 4;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CB81A8]])
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)convertStopReason:(int64_t)a3
{
  v3 = -11785;
  if (a3 == -11786)
  {
    v4 = -11786;
  }

  else
  {
    v4 = -11785;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a3 == -11787)
  {
    v5 = -11787;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == -11788)
  {
    v3 = -11788;
  }

  if (a3 == -11789)
  {
    v3 = -11789;
  }

  if (a3 <= -11788)
  {
    return v3;
  }

  else
  {
    return v5;
  }
}

- (BOOL)_hasCorrectOutputAudioRoute
{
  v13 = *MEMORY[0x277D85DE8];
  if (CSIsOSX())
  {
    goto LABEL_2;
  }

  audioProvider = self->_audioProvider;
  if (!audioProvider)
  {
LABEL_14:
    LOBYTE(v3) = 0;
    goto LABEL_17;
  }

  v5 = [(CSAudioProvider *)audioProvider playbackRoute];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSVTUIAudioSessionRecorder _hasCorrectOutputAudioRoute]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s audioOutput:[%@]", &v9, 0x16u);
  }

  if (!v5)
  {
    if ([MEMORY[0x277D018F8] isExclaveHardware])
    {
LABEL_2:
      LOBYTE(v3) = 1;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (self->_isRemoteDarwinDisplayConnected && ([v5 isEqualToString:*MEMORY[0x277CB81D8]] & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else if ([v5 isEqualToString:*MEMORY[0x277CB81F0]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CB81D8]))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v5 isEqualToString:*MEMORY[0x277CB81C8]] ^ 1;
  }

LABEL_17:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_hasCorrectInputAudioRouteFromHardwareConfiguration:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVTUIAudioSessionRecorder _hasCorrectInputAudioRouteFromHardwareConfiguration:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s hardwareConfig: %ld", &v7, 0x16u);
  }

  result = CSIsOSX();
  if ((a3 - 1) < 3)
  {
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_hasCorrectInputAudioRoute
{
  v13 = *MEMORY[0x277D85DE8];
  if (CSIsOSX())
  {
    v3 = 1;
  }

  else
  {
    audioProvider = self->_audioProvider;
    if (audioProvider)
    {
      v5 = [(CSAudioProvider *)audioProvider recordRoute];
      v6 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[CSVTUIAudioSessionRecorder _hasCorrectInputAudioRoute]";
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s audioInput:[%@]", &v9, 0x16u);
      }

      v3 = v5 && (([v5 isEqualToString:@"Borealis Input"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CB8188]) & 1) != 0 || objc_msgSend(MEMORY[0x277D018F8], "isExclaveHardware") && (objc_msgSend(v5, "isEqualToString:", @"HACBuiltIn") & 1) != 0);
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unsigned)getAudioSessionID
{
  v2 = [MEMORY[0x277CB83F0] sharedInstance];
  v3 = [v2 opaqueSessionID];

  return v3;
}

- (void)releaseAudioSession
{
  [(CSAudioProvider *)self->_audioProvider deactivateAudioSession:1 error:0];
  [(CSAudioProvider *)self->_audioProvider setAudioProviderDelegate:0];
  [(CSAudioStream *)self->_audioStream setDelegate:0];
  audioProvider = self->_audioProvider;
  self->_audioProvider = 0;

  audioStream = self->_audioStream;
  self->_audioStream = 0;
}

- (void)stopRecording
{
  v9 = *MEMORY[0x277D85DE8];
  audioStream = self->_audioStream;
  if (audioStream)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__CSVTUIAudioSessionRecorder_stopRecording__block_invoke;
    v6[3] = &unk_2785782A0;
    v6[4] = self;
    [(CSAudioStream *)audioStream stopAudioStreamWithOption:0 completion:v6];
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSVTUIAudioSessionRecorder stopRecording]";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s failed to stopRecording since audioStream not existing", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__CSVTUIAudioSessionRecorder_stopRecording__block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) _handleDidStopWithReason:0];
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = [v5 localizedDescription];
      v10 = 136315394;
      v11 = "[CSVTUIAudioSessionRecorder stopRecording]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s failed to stopRecording : %{public}@", &v10, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)startRecording
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D01678] noAlertOption];
  [v3 setRequireSingleChannelLookup:1];
  [v3 setSelectedChannel:0];
  if (self->_shouldUseRecordingStartHostTime)
  {
    [v3 setRequestHistoricalAudioDataWithHostTime:1];
    [v3 setStartRecordingHostTime:self->_startRecordingHostTime];
  }

  audioStream = self->_audioStream;
  if (audioStream)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__CSVTUIAudioSessionRecorder_startRecording__block_invoke;
    v8[3] = &unk_2785782A0;
    v8[4] = self;
    [(CSAudioStream *)audioStream startAudioStreamWithOption:v3 completion:v8];
  }

  else
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSVTUIAudioSessionRecorder startRecording]";
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s Failed to startAudioStream since audioStream not existing", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return audioStream != 0;
}

void __44__CSVTUIAudioSessionRecorder_startRecording__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained((*(a1 + 32) + 56));
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained((*(a1 + 32) + 56));
      [v9 audioSessionDidStartRecording:a2 error:v10];
    }
  }
}

- (void)updateAudioRecorderForTrainingDevice:(unint64_t)a3 deviceUUIDs:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = CSIsOSX();
  if (a3 == 1 && v7)
  {
    v8 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315651;
      v17 = "[CSVTUIAudioSessionRecorder updateAudioRecorderForTrainingDevice:deviceUUIDs:]";
      v18 = 2048;
      v19 = 1;
      v20 = 2113;
      v21 = v6;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Update to latest record context with device type: %zu, Remote device UUID list: %{private}@", &v16, 0x20u);
    }

    v9 = [v6 firstObject];
    v10 = [v9 UUIDString];

    v11 = [MEMORY[0x277D01858] sharedInstance];
    [v11 deviceConnectedWithUUID:v10];
    v12 = [v11 fetchRichDeviceUIDStringFromUUID:v10];
    v13 = [objc_alloc(MEMORY[0x277D01648]) initWithRecordType:4 deviceId:v12];
    v14 = [(CSVTUIAudioSessionRecorder *)self _forceFetchAudioProvider:1 recordContext:v13];
    [v14 setLatestRecordContext:v13 streamType:3];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareRecord
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D01648] contextForVoiceTriggerTraining];
  v4 = [(CSVTUIAudioSessionRecorder *)self _forceFetchAudioProvider:0 recordContext:v3];

  if (v4)
  {
    v30 = 0;
    v5 = [v4 activateAudioSessionWithReason:2 dynamicAttribute:0 bundleID:0 error:&v30];
    v6 = v30;
    if (v5)
    {
      audioStream = self->_audioStream;
      if (!audioStream || ![(CSAudioStream *)audioStream isStreaming])
      {
        v15 = [MEMORY[0x277D01648] contextForVoiceTriggerTraining];
        v16 = [MEMORY[0x277D016A0] defaultRequestWithContext:v15];
        [v16 setClientIdentity:7];
        [v16 setRequestRecordModeLock:1];
        if ([MEMORY[0x277D018F8] isExclaveHardware])
        {
          [v16 setRequestListeningMicIndicatorLock:1];
        }

        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v29 = v6;
        v19 = [v4 audioStreamWithRequest:v16 streamName:v18 error:&v29];
        v14 = v29;

        if (v19)
        {
          v20 = v14 == 0;
        }

        else
        {
          v20 = 0;
        }

        v9 = v20;
        v21 = *MEMORY[0x277D015D8];
        v22 = *MEMORY[0x277D015D8];
        if (v20)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v32 = "[CSVTUIAudioSessionRecorder prepareRecord]";
            _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Successfully prepared record", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v27 = v21;
          v28 = [v14 localizedDescription];
          *buf = 136315394;
          v32 = "[CSVTUIAudioSessionRecorder prepareRecord]";
          v33 = 2114;
          v34 = v28;
          _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s Failed to prepareAudioStreamRecord : %{public}@", buf, 0x16u);
        }

        [v19 setDelegate:self];
        v24 = self->_audioStream;
        self->_audioStream = v19;

        goto LABEL_30;
      }

      v8 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[CSVTUIAudioSessionRecorder prepareRecord]";
        _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioStream is already recording, do not prepare anymore", buf, 0xCu);
      }

      v9 = 1;
    }

    else
    {
      v11 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v6 localizedDescription];
        *buf = 136315394;
        v32 = "[CSVTUIAudioSessionRecorder prepareRecord]";
        v33 = 2114;
        v34 = v13;
        _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Failed to activate audio session, error : %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    v14 = v6;
LABEL_30:

    goto LABEL_31;
  }

  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v32 = "[CSVTUIAudioSessionRecorder prepareRecord]";
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Cannot prepare since audio provider does not exist", buf, 0xCu);
  }

  v9 = 0;
LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_forceFetchAudioProvider:(BOOL)a3 recordContext:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a4;
  p_audioProvider = &self->_audioProvider;
  audioProvider = self->_audioProvider;
  if (audioProvider && !a3)
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s audioProvider already exists and force == %d, return the current one.", buf, 0x12u);
      v10 = 0;
      audioProvider = *p_audioProvider;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_27;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self->_audioProvider;
  self->_audioProvider = 0;

  objc_autoreleasePoolPop(v11);
  audioProviderSelector = self->_audioProviderSelector;
  if (audioProviderSelector)
  {
    v14 = MEMORY[0x277D015D8];
    v15 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
      _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Using audio provider selector to fetch appropriate audio provider.", buf, 0xCu);
      audioProviderSelector = self->_audioProviderSelector;
    }

    v40 = 0;
    audioProvider = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithContext:v6 error:&v40];
    v16 = v40;
    if (v16)
    {
      v17 = *v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Failed to fetch audio provider with error %@", buf, 0x16u);
      }
    }

LABEL_26:
    objc_storeStrong(&self->_audioProvider, audioProvider);
    [(CSVTUIAudioSessionRecorder *)self _updateRemoteDarwinDisplayConnectedIfNeeded];
    v10 = audioProvider;
LABEL_27:
    v29 = audioProvider;
    audioProvider = v10;
    goto LABEL_28;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__2270;
  v51 = __Block_byref_object_dispose__2271;
  v52 = 0;
  v18 = objc_alloc(MEMORY[0x277D01650]);
  v19 = *&buf[8];
  obj = *(*&buf[8] + 40);
  v20 = [v18 initWithQueue:0 error:&obj];
  objc_storeStrong((v19 + 40), obj);
  if (v20)
  {
    *v47 = 0;
    *&v47[8] = v47;
    *&v47[16] = 0x2020000000;
    v48 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __69__CSVTUIAudioSessionRecorder__forceFetchAudioProvider_recordContext___block_invoke;
    v34[3] = &unk_278578278;
    v34[4] = v47;
    v34[5] = &v35;
    v34[6] = buf;
    [v20 setContext:v6 completion:v34];
    v21 = MEMORY[0x277D015D8];
    v22 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*&v47[8] + 24);
      *v41 = 136315650;
      v42 = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
      v43 = 2114;
      v44 = v6;
      v45 = 2048;
      v46 = v23;
      _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s For Context : %{public}@, audioStreamId(%llu) has allocated", v41, 0x20u);
    }

    v24 = *(*&v47[8] + 24);
    v25 = v24 != 0;
    if (v24)
    {
      v26 = objc_alloc(MEMORY[0x277D01640]);
      audioProvider = [v26 initWithAudioStreamHandleId:*(*&v47[8] + 24) audioStreamType:v36[3] audioRecordContext:v6 audioRecorder:v20];
      [audioProvider start];
      [audioProvider setAudioProviderDelegate:self];
    }

    else
    {
      v28 = *v21;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v33 = [*(*&buf[8] + 40) localizedDescription];
        *v41 = 136315394;
        v42 = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
        v43 = 2112;
        v44 = v33;
        _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s Failed to get audio stream handle ID : %{publid}@", v41, 0x16u);
      }

      audioProvider = 0;
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(v47, 8);
  }

  else
  {
    v27 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v32 = [*(*&buf[8] + 40) localizedDescription];
      *v47 = 136315394;
      *&v47[4] = "[CSVTUIAudioSessionRecorder _forceFetchAudioProvider:recordContext:]";
      *&v47[12] = 2114;
      *&v47[14] = v32;
      _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s Failed to create audio recorder : %{public}@", v47, 0x16u);
    }

    v25 = 0;
    audioProvider = 0;
  }

  _Block_object_dispose(buf, 8);
  if (v25)
  {
    goto LABEL_26;
  }

  v29 = 0;
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __69__CSVTUIAudioSessionRecorder__forceFetchAudioProvider_recordContext___block_invoke(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

- (void)setAudioRecordingHostTime:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_shouldUseRecordingStartHostTime = 1;
  self->_startRecordingHostTime = a3;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVTUIAudioSessionRecorder setAudioRecordingHostTime:]";
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting start recording time to %llu", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (CSVTUIAudioSessionRecorder)initWithAudioProvider:(id)a3 forceSupportsRemoteDarwinDisplay:(BOOL)a4
{
  v7 = a3;
  v8 = [(CSVTUIAudioSessionRecorder *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audioProvider, a3);
    v9->_forceSupportsRemoteDarwinDisplay = a4;
    [(CSVTUIAudioSessionRecorder *)v9 _updateRemoteDarwinDisplayConnectedIfNeeded];
    v9->_startRecordingHostTime = 0;
    v9->_shouldUseRecordingStartHostTime = 0;
  }

  return v9;
}

- (CSVTUIAudioSessionRecorder)initWithAudioProviderSelector:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CSVTUIAudioSessionRecorder;
  v6 = [(CSVTUIAudioSessionRecorder *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeWeak(&v6->_delegate, 0);
  v8 = dispatch_queue_create("com.apple.VoiceTriggerUI.RecordSessionQueue", 0);
  queue = v7->_queue;
  v7->_queue = v8;

  objc_storeStrong(&v7->_audioProviderSelector, a3);
  v10 = [MEMORY[0x277D01648] contextForVoiceTriggerTraining];
  v11 = [(CSVTUIAudioSessionRecorder *)v7 _forceFetchAudioProvider:0 recordContext:v10];

  if (v7->_audioProvider)
  {
    v12 = objc_alloc(MEMORY[0x277D01630]);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v13 = [v12 initWithSampleRate:?];
    powerMeter = v7->_powerMeter;
    v7->_powerMeter = v13;

    v7->_startRecordingHostTime = 0;
    v7->_shouldUseRecordingStartHostTime = 0;
LABEL_4:
    v15 = v7;
    goto LABEL_8;
  }

  v16 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v21 = "[CSVTUIAudioSessionRecorder initWithAudioProviderSelector:]";
    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Creating audioRecorder has failed", buf, 0xCu);
  }

  v15 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

@end