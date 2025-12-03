@interface TVLListenEngine
+ (TVLListenEngine)engineWithCompletion:(id)completion;
+ (void)invalidate;
- (BOOL)_setupAndStartAudioEngineGraphWithTimeout:(double)timeout error:(id *)error;
- (BOOL)_setupAndStartAudioSessionWithError:(id *)error;
- (BOOL)startListeningWithReferenceTone:(id)tone at:(unint64_t)at saveToFile:(id)file withCallback:(id)callback completion:(id)completion;
- (TVLListenEngine)init;
- (double)medianOfSortedArray:(id)array;
- (void)_handleIterruption:(id)iterruption;
- (void)_splitMicrophoneAndReferenceToneChannels;
- (void)completeAnalysis;
- (void)init;
- (void)invalidate;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
@end

@implementation TVLListenEngine

+ (TVLListenEngine)engineWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__TVLListenEngine_engineWithCompletion___block_invoke;
  v8[3] = &unk_279D6C248;
  v9 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [mEMORY[0x277CB83F8] requestRecordPermission:v8];

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

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__handleIterruption_ name:*MEMORY[0x277CB8068] object:0];

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
  obj = self;
  objc_sync_enter(obj);
  [_listenEngineInst invalidate];
  v2 = _listenEngineInst;
  _listenEngineInst = 0;

  objc_sync_exit(obj);
}

- (void)invalidate
{
  mixer = [(TVLListenEngine *)self mixer];
  [mixer removeTapOnBus:0];

  audioEngine = [(TVLListenEngine *)self audioEngine];
  [audioEngine stop];

  [(TVLListenEngine *)self setPlayer:0];
  [(TVLListenEngine *)self setMixer:0];
  [(TVLListenEngine *)self setMicrophone:0];
  [(TVLListenEngine *)self setAudioEngine:0];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setActive:0 error:0];
}

- (void)_handleIterruption:(id)iterruption
{
  userInfo = [iterruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
  integerValue = [v5 integerValue];

  if (!integerValue)
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

- (BOOL)_setupAndStartAudioSessionWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8028] mode:*MEMORY[0x277CB80B0] options:2 error:error];

  if (v5 && ([MEMORY[0x277CB83F8] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "setPreferredIOBufferDuration:error:", error, 0.005), v6, v7))
  {
    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    v9 = [mEMORY[0x277CB83F8]2 setActive:1 error:error];
  }

  else
  {
    v9 = 0;
  }

  mEMORY[0x277CB83F8]3 = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8]3 setAllowAllBuiltInDataSources:1];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  mEMORY[0x277CB83F8]4 = [MEMORY[0x277CB83F8] sharedInstance];
  availableInputs = [mEMORY[0x277CB83F8]4 availableInputs];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke;
  v25[3] = &unk_279D6C270;
  v25[4] = &v26;
  [availableInputs enumerateObjectsUsingBlock:v25];

  v13 = v27[5];
  if (v13)
  {
    if (v9)
    {
      mEMORY[0x277CB83F8]5 = [MEMORY[0x277CB83F8] sharedInstance];
      v9 = [mEMORY[0x277CB83F8]5 setPreferredInput:v27[5] error:error];

      v13 = v27[5];
    }

    dataSources = [v13 dataSources];
    v16 = [dataSources sortedArrayUsingComparator:&__block_literal_global_6];
    lastObject = [v16 lastObject];

    if (_TVLLogDefault_onceToken_6 != -1)
    {
      [TVLListenEngine init];
    }

    v18 = _TVLLogDefault_log_6;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [lastObject description];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_26CD78000, v18, OS_LOG_TYPE_DEFAULT, "Selected Built-In Mic: %{public}@", &buf, 0xCu);
    }

    if (lastObject)
    {
      if (v9)
      {
        LOBYTE(v9) = [v27[5] setPreferredDataSource:lastObject error:error];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = 0;
      supportedPolarPatterns = [lastObject supportedPolarPatterns];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __55__TVLListenEngine__setupAndStartAudioSessionWithError___block_invoke_8;
      v24[3] = &unk_279D6C2B8;
      v24[4] = &buf;
      [supportedPolarPatterns enumerateObjectsUsingBlock:v24];

      v21 = *(*(&buf + 1) + 40);
      if (v21)
      {
        [lastObject setPreferredPolarPattern:v21 error:error];
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

- (BOOL)_setupAndStartAudioEngineGraphWithTimeout:(double)timeout error:(id *)error
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
  v10 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_group_wait(v9, v10);
  *error = v51[5];
  mixer = [(TVLListenEngine *)self mixer];

  if (mixer)
  {
    v12 = objc_alloc_init(MEMORY[0x277CB8388]);
    [(TVLListenEngine *)self setAudioEngine:v12];

    audioEngine = [(TVLListenEngine *)self audioEngine];
    inputNode = [audioEngine inputNode];
    [(TVLListenEngine *)self setMicrophone:inputNode];

    microphone = [(TVLListenEngine *)self microphone];
    v16 = [microphone inputFormatForBus:0];
    [v16 sampleRate];
    if (v17 <= 0.0)
    {
    }

    else
    {
      microphone2 = [(TVLListenEngine *)self microphone];
      v19 = [microphone2 inputFormatForBus:0];
      v20 = [v19 channelCount] == 0;

      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x277CB83E0]);
        [(TVLListenEngine *)self setPlayer:v21];

        audioEngine2 = [(TVLListenEngine *)self audioEngine];
        player = [(TVLListenEngine *)self player];
        [audioEngine2 attachNode:player];

        audioEngine3 = [(TVLListenEngine *)self audioEngine];
        mixer2 = [(TVLListenEngine *)self mixer];
        [audioEngine3 attachNode:mixer2];

        v26 = objc_alloc(MEMORY[0x277CB83A8]);
        mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
        [mEMORY[0x277CB83F8] sampleRate];
        v28 = [v26 initStandardFormatWithSampleRate:2 channels:?];

        audioEngine4 = [(TVLListenEngine *)self audioEngine];
        microphone3 = [(TVLListenEngine *)self microphone];
        mixer3 = [(TVLListenEngine *)self mixer];
        [audioEngine4 connect:microphone3 to:mixer3 fromBus:0 toBus:1 format:v28];

        audioEngine5 = [(TVLListenEngine *)self audioEngine];
        player2 = [(TVLListenEngine *)self player];
        mixer4 = [(TVLListenEngine *)self mixer];
        [audioEngine5 connect:player2 to:mixer4 fromBus:0 toBus:0 format:v28];

        audioEngine6 = [(TVLListenEngine *)self audioEngine];
        mixer5 = [(TVLListenEngine *)self mixer];
        audioEngine7 = [(TVLListenEngine *)self audioEngine];
        mainMixerNode = [audioEngine7 mainMixerNode];
        [audioEngine6 connect:mixer5 to:mainMixerNode format:v28];

        audioEngine8 = [(TVLListenEngine *)self audioEngine];
        mainMixerNode2 = [audioEngine8 mainMixerNode];
        [mainMixerNode2 setOutputVolume:0.0];

        [(TVLListenEngine *)self _splitMicrophoneAndReferenceToneChannels];
        audioEngine9 = [(TVLListenEngine *)self audioEngine];
        v42 = [audioEngine9 startAndReturnError:error];

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
      microphone4 = [(TVLListenEngine *)self microphone];
      v44 = [microphone4 inputFormatForBus:0];
      [(TVLListenEngine *)v44 _setupAndStartAudioEngineGraphWithTimeout:buf error:v28, microphone4];
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
  mixer = [(TVLListenEngine *)self mixer];
  v4 = [mixer inputFormatForBus:0];
  channelCount = [v4 channelCount];

  switch(channelCount)
  {
    case 3:
      mixer2 = [(TVLListenEngine *)self mixer];
      audioUnit = [mixer2 audioUnit];
      v8 = &SURROUND_TO_STEREO_LEFT;
      v9 = 24;
      break;
    case 2:
      mixer2 = [(TVLListenEngine *)self mixer];
      audioUnit = [mixer2 audioUnit];
      v8 = &STEREO_TO_STEREO_LEFT;
      v9 = 16;
      break;
    case 1:
      mixer2 = [(TVLListenEngine *)self mixer];
      audioUnit = [mixer2 audioUnit];
      v8 = &MONO_TO_STEREO_LEFT;
      v9 = 8;
      break;
    default:
      goto LABEL_8;
  }

  AudioUnitSetProperty(audioUnit, 0xBBEu, 1u, 0, v8, v9);

LABEL_8:
  mixer3 = [(TVLListenEngine *)self mixer];
  v11 = [mixer3 inputFormatForBus:1];
  channelCount2 = [v11 channelCount];

  switch(channelCount2)
  {
    case 3:
      mixer4 = [(TVLListenEngine *)self mixer];
      audioUnit2 = [mixer4 audioUnit];
      v14 = &SURROUND_TO_STEREO_RIGHT;
      v15 = 24;
      break;
    case 2:
      mixer4 = [(TVLListenEngine *)self mixer];
      audioUnit2 = [mixer4 audioUnit];
      v14 = &STEREO_TO_STEREO_RIGHT;
      v15 = 16;
      break;
    case 1:
      mixer4 = [(TVLListenEngine *)self mixer];
      audioUnit2 = [mixer4 audioUnit];
      v14 = &MONO_TO_STEREO_RIGHT;
      v15 = 8;
      break;
    default:
      return;
  }

  AudioUnitSetProperty(audioUnit2, 0xBBEu, 1u, 1u, v14, v15);
}

- (BOOL)startListeningWithReferenceTone:(id)tone at:(unint64_t)at saveToFile:(id)file withCallback:(id)callback completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  toneCopy = tone;
  fileCopy = file;
  callbackCopy = callback;
  completionCopy = completion;
  audioEngine = [(TVLListenEngine *)self audioEngine];
  v68 = 0;
  v15 = [audioEngine startAndReturnError:&v68];
  v16 = v68;

  if (v15)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] IOBufferDuration];
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

    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8]2 inputSafetyOffset];
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

    mEMORY[0x277CB83F8]3 = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8]3 outputSafetyOffset];
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

    v58 = dispatch_time(at, (v29 * 1000000000.0));
    [(TVLListenEngine *)self setCallback:callbackCopy];
    [(TVLListenEngine *)self setCompletion:completionCopy];
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(TVLListenEngine *)self setConfidentResults:v31];

    [(TVLListenEngine *)self setConvergenceLossCount:0];
    [(TVLListenEngine *)self setFirstObservationDate:0];
    [(TVLListenEngine *)self setTimeToConverge:INFINITY];
    [(TVLListenEngine *)self setLastObservationWasConfident:0];
    v32 = objc_alloc(MEMORY[0x277CDC8F0]);
    mixer = [(TVLListenEngine *)self mixer];
    v34 = [mixer outputFormatForBus:0];
    v35 = [v32 initWithFormat:v34];
    [(TVLListenEngine *)self setStreamAnalyzer:v35];

    v36 = objc_alloc_init(MEMORY[0x277CDC928]);
    [(TVLListenEngine *)self setEstimateAudioOffsetRequest:v36];

    streamAnalyzer = [(TVLListenEngine *)self streamAnalyzer];
    estimateAudioOffsetRequest = [(TVLListenEngine *)self estimateAudioOffsetRequest];
    v67 = v16;
    [streamAnalyzer addRequest:estimateAudioOffsetRequest withObserver:self error:&v67];
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
      if (fileCopy)
      {
        v41 = objc_alloc(MEMORY[0x277CB8398]);
        mixer2 = [(TVLListenEngine *)self mixer];
        v43 = [mixer2 outputFormatForBus:0];
        settings = [v43 settings];
        v66 = 0;
        v45 = [v41 initForWriting:fileCopy settings:settings error:&v66];
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

      mixer3 = [(TVLListenEngine *)self mixer];
      [mixer3 removeTapOnBus:0];

      objc_initWeak(&location, self);
      mixer4 = [(TVLListenEngine *)self mixer];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke;
      v63[3] = &unk_279D6C330;
      objc_copyWeak(&v64, &location);
      [mixer4 installTapOnBus:0 bufferSize:64 format:0 block:v63];

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

      player = [(TVLListenEngine *)self player];
      v53 = [MEMORY[0x277CB8428] timeWithHostTime:v58];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __89__TVLListenEngine_startListeningWithReferenceTone_at_saveToFile_withCallback_completion___block_invoke_22;
      v61[3] = &unk_279D6C358;
      objc_copyWeak(&v62, &location);
      [player scheduleFile:toneCopy atTime:v53 completionCallbackType:2 completionHandler:v61];

      player2 = [(TVLListenEngine *)self player];
      [player2 prepareWithFrameCount:{objc_msgSend(toneCopy, "length")}];

      player3 = [(TVLListenEngine *)self player];
      [player3 play];

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

    (*(completionCopy + 2))(completionCopy, 0, 0, 0.0);
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
  confidentResults = [(TVLListenEngine *)self confidentResults];
  if (![confidentResults count])
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

  confidentResults2 = [(TVLListenEngine *)self confidentResults];
  v6 = [confidentResults2 sortedArrayUsingSelector:sel_compare_];

  [(TVLListenEngine *)self medianOfSortedArray:v6];
  v8 = v7;
  firstObject = [v6 firstObject];
  [firstObject doubleValue];
  v11 = v10;

  lastObject = [v6 lastObject];
  [lastObject doubleValue];
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
  completion = [(TVLListenEngine *)self completion];
  (completion)[2](completion, v21, v20, v8);

  v23 = *MEMORY[0x277D85DE8];
}

- (double)medianOfSortedArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4)
  {
    v5 = v4;
    if (v4 == 1)
    {
      firstObject = [arrayCopy firstObject];
LABEL_8:
      v15 = firstObject;
      [firstObject doubleValue];
      v7 = v16;

      goto LABEL_9;
    }

    v8 = (v4 - 1) >> 1;
    if (v4)
    {
      firstObject = [arrayCopy objectAtIndex:v8];
      goto LABEL_8;
    }

    v9 = [arrayCopy objectAtIndex:v8];
    [v9 doubleValue];
    v11 = v10;

    v12 = [arrayCopy objectAtIndex:v5 >> 1];
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

- (void)request:(id)request didProduceResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObservationDate = [(TVLListenEngine *)self firstObservationDate];

    if (!firstObservationDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(TVLListenEngine *)self setFirstObservationDate:date];
    }

    v7 = resultCopy;
    [v7 offset];
    v9 = v8 / 1000.0 - *&_inputLatency;
    callback = [(TVLListenEngine *)self callback];
    [v7 confidence];
    v12 = v11;
    callback[2](callback, v9, v12);

    [v7 confidence];
    v14 = v13;
    if (v13 == 1.0)
    {
      confidentResults = [(TVLListenEngine *)self confidentResults];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [confidentResults addObject:v16];

      [(TVLListenEngine *)self timeToConverge];
      if (v17 == INFINITY)
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        firstObservationDate2 = [(TVLListenEngine *)self firstObservationDate];
        [date2 timeIntervalSinceDate:firstObservationDate2];
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

- (void)request:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (_TVLLogDefault_onceToken_6 != -1)
  {
    __40__TVLListenEngine_engineWithCompletion___block_invoke_cold_1();
  }

  if (os_log_type_enabled(_TVLLogDefault_log_6, OS_LOG_TYPE_ERROR))
  {
    [TVLListenEngine request:didFailWithError:];
  }

  completion = [(TVLListenEngine *)self completion];
  completion[2](completion, 0, 0, 0.0);

  [(TVLListenEngine *)self invalidate];
}

- (void)requestDidComplete:(id)complete
{
  completeCopy = complete;
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