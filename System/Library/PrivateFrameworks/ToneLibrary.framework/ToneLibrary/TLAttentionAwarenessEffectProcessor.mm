@interface TLAttentionAwarenessEffectProcessor
- ($8F739DADA627152431EF347AE70D5328)effectParameters;
- (BOOL)start;
- (TLAttentionAwarenessEffectProcessor)initWithProcessingFormat:(id)a3 framesPerRender:(unsigned int)a4 audioSession:(id)a5 effectParameters:(id)a6;
- (float)_currentEffectMix;
- (float)_sanitizeEffectMix:(float)a3;
- (void)_applyEffectMix:(float)a3;
- (void)_applyEffectParameters:(id)a3 includingEffectMix:(BOOL)a4;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)dealloc;
- (void)setEffectParameters:(id)a3 effectMixFadeDuration:(double)a4;
- (void)start;
@end

@implementation TLAttentionAwarenessEffectProcessor

- (TLAttentionAwarenessEffectProcessor)initWithProcessingFormat:(id)a3 framesPerRender:(unsigned int)a4 audioSession:(id)a5 effectParameters:(id)a6
{
  var2 = a6.var2;
  v65 = *&a6.var0;
  v81 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v67 = a5;
  v76.receiver = self;
  v76.super_class = TLAttentionAwarenessEffectProcessor;
  v9 = [(TLAttentionAwarenessEffectProcessor *)&v76 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:v10];
    v13 = [v12 bundleIdentifier];
    v14 = NSStringFromClass(v10);
    v15 = [v11 stringWithFormat:@"%@.%@-%@", v13, v14, @"AccessQueue"];
    accessQueueLabel = v9->_accessQueueLabel;
    v9->_accessQueueLabel = v15;

    v17 = dispatch_queue_create([(NSString *)v9->_accessQueueLabel UTF8String], 0);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v17;

    objc_storeStrong(&v9->_audioSession, a5);
    v19 = objc_alloc_init(MEMORY[0x1E69583F8]);
    engine = v9->_engine;
    v9->_engine = v19;

    v21 = v9->_engine;
    v75 = 0;
    v22 = [(AVAudioEngine *)v21 enableManualRenderingMode:1 format:v8 maximumFrameCount:a4 error:&v75];
    v23 = v75;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = [(AVAudioEngine *)v9->_engine inputNode];
      inputNode = v9->_inputNode;
      v9->_inputNode = v25;

      v27 = objc_alloc_init(MEMORY[0x1E69584C0]);
      lowPassFilter = v9->_lowPassFilter;
      v9->_lowPassFilter = v27;

      v29 = objc_alloc_init(MEMORY[0x1E69584D0]);
      reverb = v9->_reverb;
      v9->_reverb = v29;

      [(AVAudioEngine *)v9->_engine attachNode:v9->_lowPassFilter];
      [(AVAudioEngine *)v9->_engine attachNode:v9->_reverb];
      [(AVAudioEngine *)v9->_engine connect:v9->_lowPassFilter to:v9->_reverb format:v8];
      v31 = v9->_engine;
      v32 = v9->_reverb;
      v33 = [(AVAudioEngine *)v31 mainMixerNode];
      [(AVAudioEngine *)v31 connect:v32 to:v33 fromBus:0 toBus:1 format:v8];

      v34 = objc_alloc(MEMORY[0x1E69583E0]);
      v35 = [(AVAudioEngine *)v9->_engine mainMixerNode];
      v62 = [v34 initWithNode:v35 bus:0];

      v36 = [objc_alloc(MEMORY[0x1E69583E0]) initWithNode:v9->_lowPassFilter bus:0];
      v37 = v9->_engine;
      v38 = v9->_inputNode;
      v77[0] = v62;
      v77[1] = v36;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
      [(AVAudioEngine *)v37 connect:v38 toConnectionPoints:v39 fromBus:0 format:v8];

      v66 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v61 = [v66 URLForResource:@"PearlID_Equalizer" withExtension:@"aupreset"];
      v40 = v9->_lowPassFilter;
      v74 = v23;
      LOBYTE(v37) = [(AVAudioUnitEQ *)v40 loadAudioUnitPresetAtURL:v61 error:&v74];
      v41 = v74;

      if ((v37 & 1) == 0)
      {
        v42 = TLLogPlayback();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v9 framesPerRender:v41 audioSession:? effectParameters:?];
        }
      }

      v63 = [(AVAudioUnitEQ *)v9->_lowPassFilter bands];
      v43 = TLLogPlayback();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v59 = [(AVAudioUnitEQ *)v9->_lowPassFilter bypass];
        v60 = [v63 count];
        *location = 138543874;
        *&location[4] = v9;
        v79 = 1024;
        *v80 = v59;
        *&v80[4] = 2048;
        *&v80[6] = v60;
        _os_log_debug_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEBUG, "%{public}@: -init. Equalizer bypass: %{BOOL}d. Number of bands: %lu.", location, 0x1Cu);
      }

      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke;
      v72[3] = &unk_1E8579618;
      v44 = v9;
      v73 = v44;
      [v63 enumerateObjectsUsingBlock:v72];
      v45 = [v66 URLForResource:@"PearlID_Reverb" withExtension:@"aupreset"];
      v46 = v9->_reverb;
      v71 = v41;
      v47 = [(AVAudioUnitReverb *)v46 loadAudioUnitPresetAtURL:v45 error:&v71];
      v23 = v71;

      if ((v47 & 1) == 0)
      {
        v48 = TLLogPlayback();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v44 framesPerRender:v23 audioSession:? effectParameters:?];
        }
      }

      v49 = TLLogPlayback();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v44 framesPerRender:&v9->_reverb audioSession:? effectParameters:?];
      }

      v50 = [(AVAudioEngine *)v9->_engine mainMixerNode];
      LODWORD(v51) = 1.0;
      [v50 setOutputVolume:v51];

      v52 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v8 frameCapacity:a4];
      destinationPCMBuffer = v44->_destinationPCMBuffer;
      v44->_destinationPCMBuffer = v52;

      [(AVAudioPCMBuffer *)v44->_destinationPCMBuffer setFrameLength:a4];
      objc_initWeak(location, v44);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke_21;
      v69[3] = &unk_1E8579640;
      objc_copyWeak(&v70, location);
      v54 = MEMORY[0x1DA730160](v69);
      if ([(AVAudioInputNode *)v9->_inputNode setManualRenderingInputPCMFormat:v8 inputBlock:v54])
      {
        *&v44->_effectParameters.shouldBypassLowPassFilter = v65;
        v44->_effectParameters.effectMix = var2;
        [TLAttentionAwarenessEffectProcessor _applyEffectParameters:v44 includingEffectMix:"_applyEffectParameters:includingEffectMix:"];
      }

      else
      {

        v44 = 0;
      }

      objc_destroyWeak(&v70);
      objc_destroyWeak(location);

      v9 = v62;
    }

    else
    {
      v36 = TLLogPlayback();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v57 = [v23 tl_nonRedundantDescription];
        v58 = [v8 description];
        *location = 138543874;
        *&location[4] = v57;
        v79 = 2114;
        *v80 = v58;
        *&v80[8] = 2048;
        *&v80[10] = a4;
        _os_log_error_impl(&dword_1D9356000, v36, OS_LOG_TYPE_ERROR, "Could not switch engine to offline mode, error %{public}@, format = %{public}@, maximumNumberOfFrames = %ld.", location, 0x20u);
      }

      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v44;
}

void __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = TLLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = [v5 filterType];
    [v5 gain];
    v11 = v10;
    [v5 frequency];
    v13 = 138544642;
    v14 = v8;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 1024;
    v24 = [v5 bypass];
    _os_log_debug_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: -init. Equalizer band #%lu: filterType = %ld, gain = %f, frequency = %f, bypass = %{BOOL}d.", &v13, 0x3Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  dispatch_sync(v4, &__block_literal_global_4);
  v5.receiver = self;
  v5.super_class = TLAttentionAwarenessEffectProcessor;
  [(TLAttentionAwarenessEffectProcessor *)&v5 dealloc];
}

- ($8F739DADA627152431EF347AE70D5328)effectParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1D93BC429;
  v12 = 0;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__TLAttentionAwarenessEffectProcessor_effectParameters__block_invoke;
  v7[3] = &unk_1E8578950;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue, v7);
  v3 = *(v9 + 4);
  v4 = v9[10];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.var0 = v5;
  result.var1 = *(&v5 + 1);
  result.var2 = v6;
  return result;
}

uint64_t __55__TLAttentionAwarenessEffectProcessor_effectParameters__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(*(result + 40) + 8);
  v3 = *(v1 + 80);
  *(v2 + 40) = *(v1 + 88);
  *(v2 + 32) = v3;
  return result;
}

- (void)setEffectParameters:(id)a3 effectMixFadeDuration:(double)a4
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke;
  v5[3] = &unk_1E8579690;
  v5[4] = self;
  v6 = a3;
  *&v5[5] = a4;
  dispatch_sync(accessQueue, v5);
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke(uint64_t a1)
{
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  v5 = *(a1 + 56);
  *(v3 + 80) = *(a1 + 48);
  *(v3 + 88) = v5;
  [*(a1 + 32) _applyEffectParameters:*(a1 + 48) includingEffectMix:{*(a1 + 56), 0}];
  LODWORD(v6) = v4;
  [*(a1 + 32) _sanitizeEffectMix:v6];
  v8 = v7;
  LODWORD(v9) = *(a1 + 56);
  [*(a1 + 32) _sanitizeEffectMix:v9];
  v11 = v10;
  if (llroundf(v8 * 8388600.0) != llroundf(v10 * 8388600.0))
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    if (v12 >= 0.00000011920929)
    {
      [v13 _currentEffectMix];
      v15 = v14;
      v16 = v11 - v14;
      v17 = *(a1 + 40) / 0.00499999989;
      v18 = llroundf(ceilf(v17));
      v19 = *(*(a1 + 32) + 96);
      if (v19)
      {
        dispatch_source_cancel(v19);
      }

      v20 = dispatch_get_global_queue(2, 0);
      v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v20);
      v22 = *(a1 + 32);
      v23 = *(v22 + 96);
      *(v22 + 96) = v21;

      dispatch_source_set_timer(*(*(a1 + 32) + 96), 0, 0x4C4B40uLL, 0xC350uLL);
      objc_initWeak(&location, *(a1 + 32));
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v29[3] = 0;
      v24 = *(*(a1 + 32) + 96);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_26;
      handler[3] = &unk_1E8579668;
      objc_copyWeak(v26, &location);
      handler[4] = v29;
      v26[1] = v18;
      v27 = v15;
      v28 = v16;
      dispatch_source_set_event_handler(v24, handler);
      dispatch_resume(*(*(a1 + 32) + 96));
      objc_destroyWeak(v26);
      _Block_object_dispose(v29, 8);
      objc_destroyWeak(&location);
    }

    else
    {
      *&v12 = v11;
      [v13 _applyEffectMix:v12];
    }
  }
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *&v3 = *(a1 + 56) + (((*(*(*(a1 + 32) + 8) + 24) + 1) / *(a1 + 48)) * *(a1 + 60));
    [WeakRetained _applyEffectMix:v3];
    if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 48))
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x3032000000;
      v10 = __Block_byref_object_copy__2;
      v11 = __Block_byref_object_dispose__2;
      v12 = 0;
      v5 = v4[1];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_27;
      v6[3] = &unk_1E8578950;
      v6[4] = v4;
      v6[5] = &v7;
      dispatch_sync(v5, v6);
      dispatch_source_cancel(v8[5]);
      _Block_object_dispose(&v7, 8);
    }
  }
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_27(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;
}

- (BOOL)start
{
  if ([(AVAudioEngine *)self->_engine isInManualRenderingMode])
  {
    engine = self->_engine;
    v9 = 0;
    v4 = [(AVAudioEngine *)engine startAndReturnError:&v9];
    v5 = v9;
    v6 = v5;
    if (!v4 && v5)
    {
      v7 = TLLogPlayback();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TLAttentionAwarenessEffectProcessor *)v6 start];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  self->_started = 1;
  return v4;
}

- (void)_applyEffectMix:(float)a3
{
  inputNode = self->_inputNode;
  v6 = [(AVAudioEngine *)self->_engine mainMixerNode];
  v12 = [(AVAudioInputNode *)inputNode destinationForMixer:v6 bus:1];

  *&v7 = a3;
  [v12 setVolume:v7];
  v8 = self->_inputNode;
  v9 = [(AVAudioEngine *)self->_engine mainMixerNode];
  v10 = [(AVAudioInputNode *)v8 destinationForMixer:v9 bus:0];

  *&v11 = 1.0 - a3;
  [v10 setVolume:v11];
}

- (float)_currentEffectMix
{
  inputNode = self->_inputNode;
  v3 = [(AVAudioEngine *)self->_engine mainMixerNode];
  v4 = [(AVAudioInputNode *)inputNode destinationForMixer:v3 bus:1];

  [v4 volume];
  v6 = v5;

  return v6;
}

- (float)_sanitizeEffectMix:(float)a3
{
  v3 = a3;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return fmin(v3, 1.0);
}

- (void)_applyEffectParameters:(id)a3 includingEffectMix:(BOOL)a4
{
  v4 = a4;
  var2 = a3.var2;
  v24 = *MEMORY[0x1E69E9840];
  var1 = a3.var1;
  if ([(AVAudioUnitEQ *)self->_lowPassFilter bypass]!= a3.var0)
  {
    [(AVAudioUnitEQ *)self->_lowPassFilter setBypass:?];
  }

  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [TLAttentionAwarenessEffectProcessor _applyEffectParameters:? includingEffectMix:?];
  }

  v9 = [(AVAudioSession *)self->_audioSession category];
  if ([v9 isEqualToString:*MEMORY[0x1E6958080]])
  {
    if (var1 > 1.0 || (v10 = -20.0, var1 <= 0.875))
    {
      if (var1 > 0.875 || (v10 = -16.0, var1 <= 0.75))
      {
        if (var1 > 0.75 || (v10 = -14.0, var1 <= 0.625))
        {
          if (var1 > 0.625 || (v10 = -11.0, var1 <= 0.5))
          {
            v11 = var1 <= 0.25 || var1 > 0.5;
            v12 = -3.0;
            v13 = -6.0;
LABEL_31:
            if (v11)
            {
              v10 = v12;
            }

            else
            {
              v10 = v13;
            }
          }
        }
      }
    }
  }

  else
  {
    v10 = 0.0;
    if ([v9 isEqualToString:*MEMORY[0x1E6958030]])
    {
      if (var1 > 1.0 || (v10 = -28.0, var1 <= 0.875))
      {
        if (var1 > 0.875 || (v10 = -24.0, var1 <= 0.75))
        {
          if (var1 > 0.75 || (v10 = -22.0, var1 <= 0.625))
          {
            if (var1 > 0.625 || (v10 = -20.0, var1 <= 0.5))
            {
              v11 = var1 <= 0.25 || var1 > 0.5;
              v12 = -12.0;
              v13 = -16.0;
              goto LABEL_31;
            }
          }
        }
      }
    }
  }

  [(AVAudioUnitEQ *)self->_lowPassFilter globalGain];
  if (llroundf(*&v14 * 8388600.0) == llroundf(v10 * 8388600.0))
  {
    v15 = TLLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [TLAttentionAwarenessEffectProcessor _applyEffectParameters:v10 includingEffectMix:?];
    }
  }

  else
  {
    *&v14 = v10;
    [(AVAudioUnitEQ *)self->_lowPassFilter setGlobalGain:v14];
    v15 = TLLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543874;
      v19 = self;
      v20 = 2048;
      v21 = v10;
      v22 = 2114;
      v23 = v9;
      _os_log_debug_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Set low pass filter global gain to %0.2f for audio session category %{public}@.", &v18, 0x20u);
    }
  }

  if (v4)
  {
    *&v16 = var2;
    [(TLAttentionAwarenessEffectProcessor *)self _applyEffectMix:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_assertRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/AttentionAwarenessEffects/TLAttentionAwarenessEffectProcessor.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = v10;
          v18 = 2049;
          v19 = 400;
          v20 = 2113;
          v21 = v11;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)_assertNotRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_not_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (!strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/AttentionAwarenessEffects/TLAttentionAwarenessEffectProcessor.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue]";
          v16 = 2113;
          v17 = v10;
          v18 = 2049;
          v19 = 408;
          v20 = 2113;
          v21 = v11;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(void *)a2 audioSession:effectParameters:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(void *)a2 audioSession:effectParameters:.cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(id *)a2 audioSession:effectParameters:.cold.3(uint64_t a1, id *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  [*a2 wetDryMix];
  OUTLINED_FUNCTION_5_0(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0(&dword_1D9356000, v3, v4, "%{public}@: -init. Reverb wet dry mix: %f.", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 64) globalGain];
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0(&dword_1D9356000, v2, v3, "%{public}@: -setEffectParameters:. Current low pass filter global gain: %0.2f.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applyEffectParameters:(float)a1 includingEffectMix:.cold.1(float a1)
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0(a1);
  v5 = v1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Volume for low pass filter global gain: %0.2f.", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_applyEffectParameters:(float)a1 includingEffectMix:.cold.2(float a1)
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0(a1);
  v5 = v1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Low pass filter global gain is already set to %0.2f.", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end