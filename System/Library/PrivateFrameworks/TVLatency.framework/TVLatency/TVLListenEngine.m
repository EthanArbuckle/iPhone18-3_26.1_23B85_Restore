@interface TVLListenEngine
+ (TVLListenEngine)engineWithCompletion:(id)a3;
+ (void)invalidate;
- (BOOL)_setupAndStartAudioEngineGraphWithTimeout:(double)a3 error:(id *)a4;
- (BOOL)_setupAndStartAudioSessionWithError:(id *)a3;
- (BOOL)startListeningWithReferenceTone:(id)a3 at:(unint64_t)a4 saveToFile:(id)a5 withCallback:(id)a6 completion:(id)a7;
- (TVLListenEngine)init;
- (double)medianOfSortedArray:(id)a3;
- (void)_handleIterruption:(id)a3;
- (void)_splitMicrophoneAndReferenceToneChannels;
- (void)completeAnalysis;
- (void)init;
- (void)invalidate;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
- (void)requestDidComplete:(id)a3;
@end

@implementation TVLListenEngine

+ (TVLListenEngine)engineWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CB83F8] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__TVLListenEngine_engineWithCompletion___block_invoke;
  v8[3] = &unk_279D6C248;
  v9 = v4;
  v10 = a1;
  v6 = v4;
  [v5 requestRecordPermission:v8];

  return result;
}

void __40__TVLListenEngine_engineWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    objc_sync_enter(v3);
    if (!_listenEngineInst)
    {
      v4 = objc_alloc_init(TVLListenEngine);
      v5 = _listenEngineInst;
      _listenEngineInst = v4;

      v6 = [MEMORY[0x277CB83F8] sharedInstance];
      [v6 inputLatency];
      _inputLatency = v7;

      if (_TVLLogDefault_onceToken_6 != -1)
      {
        __40__TVLListenEngine_engineWithCompletion___block_invoke_cold_1();
      }

      v8 = _TVLLogDefault_log_6;
      if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = _inputLatency;
        _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Input Latency: %f", &v13, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
    objc_sync_exit(v3);

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 32) + 16);
    v12 = *MEMORY[0x277D85DE8];

    v11();
  }
}

- (TVLListenEngine)init
{
  v16.receiver = self;
  v16.super_class = TVLListenEngine;
  v2 = [(TVLListenEngine *)&v16 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v15 = 0;
  v4 = [(TVLListenEngine *)v2 _setupAndStartAudioSessionWithError:&v15];
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v14 = v5;
    v7 = [(TVLListenEngine *)v3 _setupAndStartAudioEngineGraphWithTimeout:&v14 error:2.0];
    v8 = v14;

    if (v7)
    {
      v9 = dispatch_queue_create("com.apple.tvlatency.soundanalysis", 0);
      analysisQueue = v3->_analysisQueue;
      v3->_analysisQueue = v9;

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 addObserver:v3 selector:sel__handleIterruption_ name:*MEMORY[0x277CB8068] object:0];

LABEL_5:
      v12 = v3;
      goto LABEL_12;
    }

    v6 = v8;
  }

  if (_TVLLogDefault_onceToken_6 != -1)
  {
    [TVLListenEngine init];
  }

  if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
  {
    [TVLListenEngine init];
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (void)invalidate
{
  obj = a1;
  objc_sync_enter(obj);
  [_listenEngineInst invalidate];
  v2 = _listenEngineInst;
  _listenEngineInst = 0;

  objc_sync_exit(obj);
}

- (void)invalidate
{
  v3 = [(TVLListenEngine *)self mixer];
  [v3 removeTapOnBus:0];

  v4 = [(TVLListenEngine *)self audioEngine];
  [v4 stop];

  [(TVLListenEngine *)self setPlayer:0];
  [(TVLListenEngine *)self setMixer:0];
  [(TVLListenEngine *)self setMicrophone:0];
  [(TVLListenEngine *)self setAudioEngine:0];
  v5 = [MEMORY[0x277CB83F8] sharedInstance];
  [v5 setActive:0 error:0];
}

- (void)_handleIterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CB8080]];
  v6 = [v5 integerValue];

  if (!v6)
  {
    if (_TVLLogDefault_onceToken_6 != -1)
    {
      __40__TVLListenEngine_engineWithCompletion___block_invoke_cold_1();
    }

    v7 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CD78000, v7, OS_LOG_TYPE_DEFAULT, "Interruption Ended, Reactivating AVAudioSession...", v8, 2u);
    }

    [(TVLListenEngine *)self _setupAndStartAudioSessionWithError:0];
  }
}

- (BOOL)_setupAndStartAudioSessionWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = [v4 setCategory:*MEMORY[0x277CB8028] mode:*MEMORY[0x277CB80B0] options:2 error:a3];

  if (v5 && ([MEMORY[0x277CB83F8] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "setPreferredIOBufferDuration:error:", a3, 0.005), v6, v7))
  {
    v8 = [MEMORY[0x277CB83F8] sharedInstance];
    v9 = [v8 setActive:1 error:a3];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CB83F8] sharedInstance];
  [v10 setAllowAllBuiltInDataSources:1];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v11 = [MEMORY[0x277CB83F8] sharedInstance];
  v12 = [v11 availableInputs];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke;
  v25[3] = &unk_279D6C270;
  v25[4] = &v26;
  [v12 enumerateObjectsUsingBlock:v25];

  v13 = v27[5];
  if (v13)
  {
    if (v9)
    {
      v14 = [MEMORY[0x277CB83F8] sharedInstance];
      v9 = [v14 setPreferredInput:v27[5] error:a3];

      v13 = v27[5];
    }

    v15 = [v13 dataSources];
    v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_6];
    v17 = [v16 lastObject];

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v18 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 description];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_26CD78000, v18, OS_LOG_TYPE_DEFAULT, "Selected Built-In Mic: %{public}@", &buf, 0xCu);
    }

    if (v17)
    {
      if (v9)
      {
        LOBYTE(v9) = [v27[5] setPreferredDataSource:v17 error:a3];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = 0;
      v20 = [v17 supportedPolarPatterns];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke_8;
      v24[3] = &unk_279D6C2B8;
      v24[4] = &buf;
      [v20 enumerateObjectsUsingBlock:v24];

      v21 = *(*(&buf + 1) + 40);
      if (v21)
      {
        [v17 setPreferredPolarPattern:v21 error:a3];
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  _Block_object_dispose(&v26, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

void __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 portType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CB8190]];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 orientation];
  v6 = [v4 orientation];

  v7 = PriorityOfAVAudioSessionOrientation(v5);
  v8 = PriorityOfAVAudioSessionOrientation(v6);
  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

void __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqualToString:*MEMORY[0x277CB8138]])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_setupAndStartAudioEngineGraphWithTimeout:(double)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  v8 = MEMORY[0x277CB8430];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __67__TVLListenEngine__setupAndStartAudioEngineGraphWithTimeout_error___block_invoke;
  v47[3] = &unk_279D6C2E0;
  v47[4] = self;
  v49 = &v50;
  v9 = v7;
  v48 = v9;
  *buf = *"xmuaxmcmlppa";
  v57 = 0;
  [v8 instantiateWithComponentDescription:buf options:0 completionHandler:v47];
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_group_wait(v9, v10);
  *a4 = v51[5];
  v11 = [(TVLListenEngine *)self mixer];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CB8388]);
    [(TVLListenEngine *)self setAudioEngine:v12];

    v13 = [(TVLListenEngine *)self audioEngine];
    v14 = [v13 inputNode];
    [(TVLListenEngine *)self setMicrophone:v14];

    v15 = [(TVLListenEngine *)self microphone];
    v16 = [v15 inputFormatForBus:0];
    [v16 sampleRate];
    if (v17 <= 0.0)
    {
    }

    else
    {
      v18 = [(TVLListenEngine *)self microphone];
      v19 = [v18 inputFormatForBus:0];
      v20 = [v19 channelCount] == 0;

      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x277CB83E0]);
        [(TVLListenEngine *)self setPlayer:v21];

        v22 = [(TVLListenEngine *)self audioEngine];
        v23 = [(TVLListenEngine *)self player];
        [v22 attachNode:v23];

        v24 = [(TVLListenEngine *)self audioEngine];
        v25 = [(TVLListenEngine *)self mixer];
        [v24 attachNode:v25];

        v26 = objc_alloc(MEMORY[0x277CB83A8]);
        v27 = [MEMORY[0x277CB83F8] sharedInstance];
        [v27 sampleRate];
        v28 = [v26 initStandardFormatWithSampleRate:2 channels:?];

        v29 = [(TVLListenEngine *)self audioEngine];
        v30 = [(TVLListenEngine *)self microphone];
        v31 = [(TVLListenEngine *)self mixer];
        [v29 connect:v30 to:v31 fromBus:0 toBus:1 format:v28];

        v32 = [(TVLListenEngine *)self audioEngine];
        v33 = [(TVLListenEngine *)self player];
        v34 = [(TVLListenEngine *)self mixer];
        [v32 connect:v33 to:v34 fromBus:0 toBus:0 format:v28];

        v35 = [(TVLListenEngine *)self audioEngine];
        v36 = [(TVLListenEngine *)self mixer];
        v37 = [(TVLListenEngine *)self audioEngine];
        v38 = [v37 mainMixerNode];
        [v35 connect:v36 to:v38 format:v28];

        v39 = [(TVLListenEngine *)self audioEngine];
        v40 = [v39 mainMixerNode];
        [v40 setOutputVolume:0.0];

        [(TVLListenEngine *)self _splitMicrophoneAndReferenceToneChannels];
        v41 = [(TVLListenEngine *)self audioEngine];
        v42 = [v41 startAndReturnError:a4];

LABEL_12:
        goto LABEL_13;
      }
    }

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v28 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v43 = [(TVLListenEngine *)self microphone];
      v44 = [v43 inputFormatForBus:0];
      [(TVLListenEngine *)v44 _setupAndStartAudioEngineGraphWithTimeout:buf error:v28, v43];
    }

    v42 = 0;
    goto LABEL_12;
  }

  v42 = 0;
LABEL_13:

  _Block_object_dispose(&v50, 8);
  v45 = *MEMORY[0x277D85DE8];
  return v42;
}

void __67__TVLListenEngine__setupAndStartAudioEngineGraphWithTimeout_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setMixer:a2];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 40));
}

- (void)_splitMicrophoneAndReferenceToneChannels
{
  v3 = [(TVLListenEngine *)self mixer];
  v4 = [v3 inputFormatForBus:0];
  v5 = [v4 channelCount];

  switch(v5)
  {
    case 3:
      v6 = [(TVLListenEngine *)self mixer];
      v7 = [v6 audioUnit];
      v8 = &SURROUND_TO_STEREO_LEFT;
      v9 = 24;
      break;
    case 2:
      v6 = [(TVLListenEngine *)self mixer];
      v7 = [v6 audioUnit];
      v8 = &STEREO_TO_STEREO_LEFT;
      v9 = 16;
      break;
    case 1:
      v6 = [(TVLListenEngine *)self mixer];
      v7 = [v6 audioUnit];
      v8 = &MONO_TO_STEREO_LEFT;
      v9 = 8;
      break;
    default:
      goto LABEL_8;
  }

  AudioUnitSetProperty(v7, 0xBBEu, 1u, 0, v8, v9);

LABEL_8:
  v10 = [(TVLListenEngine *)self mixer];
  v11 = [v10 inputFormatForBus:1];
  v12 = [v11 channelCount];

  switch(v12)
  {
    case 3:
      v16 = [(TVLListenEngine *)self mixer];
      v13 = [v16 audioUnit];
      v14 = &SURROUND_TO_STEREO_RIGHT;
      v15 = 24;
      break;
    case 2:
      v16 = [(TVLListenEngine *)self mixer];
      v13 = [v16 audioUnit];
      v14 = &STEREO_TO_STEREO_RIGHT;
      v15 = 16;
      break;
    case 1:
      v16 = [(TVLListenEngine *)self mixer];
      v13 = [v16 audioUnit];
      v14 = &MONO_TO_STEREO_RIGHT;
      v15 = 8;
      break;
    default:
      return;
  }

  AudioUnitSetProperty(v13, 0xBBEu, 1u, 1u, v14, v15);
}

- (BOOL)startListeningWithReferenceTone:(id)a3 at:(unint64_t)a4 saveToFile:(id)a5 withCallback:(id)a6 completion:(id)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v59 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(TVLListenEngine *)self audioEngine];
  v68 = 0;
  v15 = [v14 startAndReturnError:&v68];
  v16 = v68;

  if (v15)
  {
    v17 = [MEMORY[0x277CB83F8] sharedInstance];
    [v17 IOBufferDuration];
    v19 = v18;

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v20 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = v19;
      _os_log_impl(&dword_26CD78000, v20, OS_LOG_TYPE_DEFAULT, "IOBufferDuration: %f", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CB83F8] sharedInstance];
    [v21 inputSafetyOffset];
    v23 = v22;

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v24 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = v23;
      _os_log_impl(&dword_26CD78000, v24, OS_LOG_TYPE_DEFAULT, "Input Safety Offset: %f", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CB83F8] sharedInstance];
    [v25 outputSafetyOffset];
    v27 = v26;

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v28 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = v27;
      _os_log_impl(&dword_26CD78000, v28, OS_LOG_TYPE_DEFAULT, "Output Safety Offset: %f", buf, 0xCu);
    }

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v29 = v23 + v19 * 2.0 + v27;
    v30 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = v29;
      _os_log_impl(&dword_26CD78000, v30, OS_LOG_TYPE_DEFAULT, "Adjusted Offset: %f", buf, 0xCu);
    }

    v58 = dispatch_time(a4, (v29 * 1000000000.0));
    [(TVLListenEngine *)self setCallback:v12];
    [(TVLListenEngine *)self setCompletion:v13];
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(TVLListenEngine *)self setConfidentResults:v31];

    [(TVLListenEngine *)self setConvergenceLossCount:0];
    [(TVLListenEngine *)self setFirstObservationDate:0];
    [(TVLListenEngine *)self setTimeToConverge:INFINITY];
    [(TVLListenEngine *)self setLastObservationWasConfident:0];
    v32 = objc_alloc(MEMORY[0x277CDC8F0]);
    v33 = [(TVLListenEngine *)self mixer];
    v34 = [v33 outputFormatForBus:0];
    v35 = [v32 initWithFormat:v34];
    [(TVLListenEngine *)self setStreamAnalyzer:v35];

    v36 = objc_alloc_init(MEMORY[0x277CDC928]);
    [(TVLListenEngine *)self setEstimateAudioOffsetRequest:v36];

    v37 = [(TVLListenEngine *)self streamAnalyzer];
    v38 = [(TVLListenEngine *)self estimateAudioOffsetRequest];
    v67 = v16;
    [v37 addRequest:v38 withObserver:self error:&v67];
    v39 = v67;

    if (v39)
    {
      if (_TVLLogDefault_onceToken_6 != -1)
      {
        [TVLListenEngine init];
      }

      if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
      {
        [TVLListenEngine startListeningWithReferenceTone:at:saveToFile:withCallback:completion:];
      }

      v40 = 0;
      v16 = v39;
    }

    else
    {
      if (v59)
      {
        v41 = objc_alloc(MEMORY[0x277CB8398]);
        v42 = [(TVLListenEngine *)self mixer];
        v43 = [v42 outputFormatForBus:0];
        v44 = [v43 settings];
        v66 = 0;
        v45 = [v41 initForWriting:v59 settings:v44 error:&v66];
        v16 = v66;
        [(TVLListenEngine *)self setFile:v45];

        if (v16)
        {
          if (_TVLLogDefault_onceToken_6 != -1)
          {
            [TVLListenEngine init];
          }

          if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
          {
            [TVLListenEngine startListeningWithReferenceTone:at:saveToFile:withCallback:completion:];
          }
        }
      }

      else
      {
        v16 = 0;
      }

      v46 = [(TVLListenEngine *)self mixer];
      [v46 removeTapOnBus:0];

      objc_initWeak(&location, self);
      v47 = [(TVLListenEngine *)self mixer];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke;
      v63[3] = &unk_279D6C330;
      objc_copyWeak(&v64, &location);
      [v47 installTapOnBus:0 bufferSize:64 format:0 block:v63];

      self->_didMissDeadline = 0;
      v48 = dispatch_time(0, 0);
      if (_TVLLogDefault_onceToken_6 != -1)
      {
        [TVLListenEngine init];
      }

      v49 = _TVLLogDefault_log_6;
      if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v70 = *&v48;
        _os_log_impl(&dword_26CD78000, v49, OS_LOG_TYPE_DEFAULT, "NOW: %llu", buf, 0xCu);
      }

      if (_TVLLogDefault_onceToken_6 != -1)
      {
        [TVLListenEngine init];
      }

      v50 = _TVLLogDefault_log_6;
      if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v70 = *&v58;
        _os_log_impl(&dword_26CD78000, v50, OS_LOG_TYPE_DEFAULT, "SCHEDULED TIME: %llu", buf, 0xCu);
      }

      if (v48 >= v58)
      {
        if (_TVLLogDefault_onceToken_6 != -1)
        {
          [TVLListenEngine init];
        }

        v51 = _TVLLogDefault_log_6;
        if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
        {
          [TVLListenEngine startListeningWithReferenceTone:v51 at:? saveToFile:? withCallback:? completion:?];
        }

        self->_didMissDeadline = 1;
      }

      v52 = [(TVLListenEngine *)self player];
      v53 = [MEMORY[0x277CB8428] timeWithHostTime:v58];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke_22;
      v61[3] = &unk_279D6C358;
      objc_copyWeak(&v62, &location);
      [v52 scheduleFile:v60 atTime:v53 completionCallbackType:2 completionHandler:v61];

      v54 = [(TVLListenEngine *)self player];
      [v54 prepareWithFrameCount:{objc_msgSend(v60, "length")}];

      v55 = [(TVLListenEngine *)self player];
      [v55 play];

      objc_destroyWeak(&v62);
      objc_destroyWeak(&v64);
      objc_destroyWeak(&location);
      v40 = 1;
    }
  }

  else
  {
    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
    {
      [TVLListenEngine startListeningWithReferenceTone:at:saveToFile:withCallback:completion:];
    }

    (*(v13 + 2))(v13, 0, 0, 0.0);
    v40 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v40;
}

void __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained analysisQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke_2;
    block[3] = &unk_279D6C308;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) file];

  if (v2)
  {
    v3 = [*(a1 + 32) file];
    [v3 writeFromBuffer:*(a1 + 40) error:0];
  }

  v4 = [*(a1 + 32) streamAnalyzer];
  [v4 analyzeAudioBuffer:*(a1 + 40) atAudioFramePosition:{objc_msgSend(*(a1 + 48), "sampleTime")}];
}

void __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained mixer];
    [v2 removeTapOnBus:0];

    v3 = [v8 player];
    [v3 pause];

    v4 = [v8 audioEngine];
    [v4 pause];

    v5 = [v8 streamAnalyzer];
    v6 = [v8 estimateAudioOffsetRequest];
    [v5 removeRequest:v6];

    [v8 setEstimateAudioOffsetRequest:0];
    v7 = [v8 streamAnalyzer];
    [v7 completeAnalysis];

    [v8 completeAnalysis];
    [v8 setConfidentResults:0];
    WeakRetained = v8;
  }
}

- (void)completeAnalysis
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = [(TVLListenEngine *)self confidentResults];
  if (![v3 count])
  {

    goto LABEL_5;
  }

  didMissDeadline = self->_didMissDeadline;

  if (didMissDeadline)
  {
LABEL_5:
    v21 = 0;
    v20 = 0;
    v8 = 0.0;
    goto LABEL_6;
  }

  v5 = [(TVLListenEngine *)self confidentResults];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  [(TVLListenEngine *)self medianOfSortedArray:v6];
  v8 = v7;
  v9 = [v6 firstObject];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v6 lastObject];
  [v12 doubleValue];
  v14 = v13;

  v24[0] = @"LATENCY_LOW";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v25[0] = v15;
  v24[1] = @"LATENCY_HIGH";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v25[1] = v16;
  v24[2] = @"CONVERGENCE_TIME";
  v17 = MEMORY[0x277CCABB0];
  [(TVLListenEngine *)self timeToConverge];
  v18 = [v17 numberWithDouble:?];
  v25[2] = v18;
  v24[3] = @"CONVERGENCE_LOSS_COUNT";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVLListenEngine convergenceLossCount](self, "convergenceLossCount")}];
  v25[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v21 = 1;
LABEL_6:
  v22 = [(TVLListenEngine *)self completion];
  (v22)[2](v22, v21, v20, v8);

  v23 = *MEMORY[0x277D85DE8];
}

- (double)medianOfSortedArray:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    if (v4 == 1)
    {
      v6 = [v3 firstObject];
LABEL_8:
      v15 = v6;
      [v6 doubleValue];
      v7 = v16;

      goto LABEL_9;
    }

    v8 = (v4 - 1) >> 1;
    if (v4)
    {
      v6 = [v3 objectAtIndex:v8];
      goto LABEL_8;
    }

    v9 = [v3 objectAtIndex:v8];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v3 objectAtIndex:v5 >> 1];
    [v12 doubleValue];
    v14 = v13;

    v7 = (v11 + v14) * 0.5;
  }

  else
  {
    v7 = 0.0;
  }

LABEL_9:

  return v7;
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  v20 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TVLListenEngine *)self firstObservationDate];

    if (!v5)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      [(TVLListenEngine *)self setFirstObservationDate:v6];
    }

    v7 = v20;
    [v7 offset];
    v9 = v8 / 1000.0 - *&_inputLatency;
    v10 = [(TVLListenEngine *)self callback];
    [v7 confidence];
    v12 = v11;
    v10[2](v10, v9, v12);

    [v7 confidence];
    v14 = v13;
    if (v13 == 1.0)
    {
      v15 = [(TVLListenEngine *)self confidentResults];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [v15 addObject:v16];

      [(TVLListenEngine *)self timeToConverge];
      if (v17 == INFINITY)
      {
        v18 = [MEMORY[0x277CBEAA8] date];
        v19 = [(TVLListenEngine *)self firstObservationDate];
        [v18 timeIntervalSinceDate:v19];
        [(TVLListenEngine *)self setTimeToConverge:?];
      }
    }

    else
    {
      if (![(TVLListenEngine *)self lastObservationWasConfident])
      {
LABEL_10:

        goto LABEL_11;
      }

      [(TVLListenEngine *)self setConvergenceLossCount:[(TVLListenEngine *)self convergenceLossCount]+ 1];
    }

    [(TVLListenEngine *)self setLastObservationWasConfident:v14 == 1.0];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_TVLLogDefault_onceToken_6 != -1)
  {
    __40__TVLListenEngine_engineWithCompletion___block_invoke_cold_1();
  }

  if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
  {
    [TVLListenEngine request:didFailWithError:];
  }

  v8 = [(TVLListenEngine *)self completion];
  v8[2](v8, 0, 0, 0.0);

  [(TVLListenEngine *)self invalidate];
}

- (void)requestDidComplete:(id)a3
{
  v3 = a3;
  if (_TVLLogDefault_onceToken_6 != -1)
  {
    __40__TVLListenEngine_engineWithCompletion___block_invoke_cold_1();
  }

  v4 = _TVLLogDefault_log_6;
  if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CD78000, v4, OS_LOG_TYPE_DEFAULT, "SoundAnalysis Did Complete!", v5, 2u);
  }
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_26CD78000, v0, v1, "Unable to create Listen Engine: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupAndStartAudioEngineGraphWithTimeout:(os_log_t)log error:(void *)a4 .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26CD78000, log, OS_LOG_TYPE_ERROR, "Microphone has an invalid input format! %{public}@", buf, 0xCu);
}

- (void)startListeningWithReferenceTone:at:saveToFile:withCallback:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_26CD78000, v0, v1, "Audio Engine did not start err=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startListeningWithReferenceTone:at:saveToFile:withCallback:completion:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_26CD78000, v0, v1, "An error occurred while setting up the stream analyzer %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startListeningWithReferenceTone:at:saveToFile:withCallback:completion:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_26CD78000, v0, v1, "Creating AVAudioFile reported an error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)request:didFailWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_26CD78000, v0, v1, "SoundAnalysis Failed. Error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end