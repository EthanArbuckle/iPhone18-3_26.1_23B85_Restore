@interface TLAttentionAwarenessEffectCoordinator
- ($8F739DADA627152431EF347AE70D5328)effectParameters;
- (TLAttentionAwarenessEffectCoordinator)initWithEffectParameters:(id)parameters audioSession:(id)session;
- (id)audioMixForAsset:(id)asset;
- (void)_finalizeAudioProcessingWithEffectAudioTapContext:(id)context;
- (void)_unprepareAudioProcessingWithEffectAudioTapContext:(id)context;
- (void)dealloc;
- (void)setEffectParameters:(id)parameters;
- (void)setEffectParameters:(id)parameters effectMixFadeDuration:(double)duration;
@end

@implementation TLAttentionAwarenessEffectCoordinator

- (TLAttentionAwarenessEffectCoordinator)initWithEffectParameters:(id)parameters audioSession:(id)session
{
  var2 = parameters.var2;
  v6 = *&parameters.var0;
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = TLAttentionAwarenessEffectCoordinator;
  v9 = [(TLAttentionAwarenessEffectCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_audioSession, session);
    os_unfair_lock_lock(&v10->_lock);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    effectAudioTapContexts = v10->_effectAudioTapContexts;
    v10->_effectAudioTapContexts = v11;

    *&v10->_effectParameters.shouldBypassLowPassFilter = v6;
    v10->_effectParameters.effectMix = var2;
    os_unfair_lock_unlock(&v10->_lock);
  }

  return v10;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  effectAudioTapContexts = self->_effectAudioTapContexts;
  self->_effectAudioTapContexts = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = TLAttentionAwarenessEffectCoordinator;
  [(TLAttentionAwarenessEffectCoordinator *)&v4 dealloc];
}

- (id)audioMixForAsset:(id)asset
{
  v46 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [assetCopy tracks];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v5 = v32 = 0u;
  audioMix = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (audioMix)
  {
    v7 = *v32;
    v8 = *MEMORY[0x1E69875A0];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      mediaType = [v10 mediaType];
      v12 = [mediaType isEqualToString:v8];

      if (v12)
      {
        break;
      }

      if (audioMix == ++v9)
      {
        audioMix = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (audioMix)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      audioMix = 0;
      goto LABEL_21;
    }

    audioMix = [MEMORY[0x1E6988038] audioMix];
    if (!audioMix)
    {
      goto LABEL_21;
    }

    v14 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:v13];
    if (v14)
    {
      v15 = objc_alloc_init(TLAttentionAwarenessEffectAudioTapContext);
      [(TLAttentionAwarenessEffectAudioTapContext *)v15 setEffectCoordinator:self];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableSet *)self->_effectAudioTapContexts addObject:v15];
      os_unfair_lock_unlock(&self->_lock);
      v24 = 0;
      v25 = v15;
      v26 = _TLAttentionAwarenessEffectAudioTapInitialize;
      v27 = _TLAttentionAwarenessEffectAudioTapFinalize;
      v28 = _TLAttentionAwarenessEffectAudioTapPrepare;
      v29 = _TLAttentionAwarenessEffectAudioTapUnprepare;
      v30 = _TLAttentionAwarenessEffectAudioTapProcess;
      cf = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v16 = getMTAudioProcessingTapCreateSymbolLoc(void)::ptr;
      v43 = getMTAudioProcessingTapCreateSymbolLoc(void)::ptr;
      if (!getMTAudioProcessingTapCreateSymbolLoc(void)::ptr)
      {
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = ___ZL38getMTAudioProcessingTapCreateSymbolLocv_block_invoke;
        v38 = &unk_1E8578DD8;
        v39 = &v40;
        v17 = MediaToolboxLibrary();
        v18 = dlsym(v17, "MTAudioProcessingTapCreate");
        *(v39[1] + 24) = v18;
        getMTAudioProcessingTapCreateSymbolLoc(void)::ptr = *(v39[1] + 24);
        v16 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (!v16)
      {
        dlerror();
        abort_report_np();
        __break(1u);
      }

      if (!v16(*MEMORY[0x1E695E480], &v24, 1, &cf))
      {
        [v14 setAudioTapProcessor:cf];
        CFRelease(cf);
        v44 = v14;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        [audioMix setInputParameters:v19];
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
    v14 = v5;
  }

LABEL_21:
  v20 = audioMix;

  v21 = *MEMORY[0x1E69E9840];
  return audioMix;
}

- ($8F739DADA627152431EF347AE70D5328)effectParameters
{
  os_unfair_lock_lock(&self->_lock);
  v3 = *&self->_effectParameters.shouldBypassLowPassFilter;
  effectMix = self->_effectParameters.effectMix;
  os_unfair_lock_unlock(&self->_lock);
  v5 = v3;
  v6 = effectMix;
  result.var0 = v5;
  result.var1 = *(&v5 + 1);
  result.var2 = v6;
  return result;
}

- (void)setEffectParameters:(id)parameters
{
  var2 = parameters.var2;
  v4 = *&parameters.var0;
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  *&self->_effectParameters.shouldBypassLowPassFilter = v4;
  self->_effectParameters.effectMix = var2;
  v6 = [(NSMutableSet *)self->_effectAudioTapContexts copy];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        effectProcessor = [*(*(&v13 + 1) + 8 * v10) effectProcessor];
        [effectProcessor setEffectParameters:{v4, LODWORD(var2)}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setEffectParameters:(id)parameters effectMixFadeDuration:(double)duration
{
  var2 = parameters.var2;
  v6 = *&parameters.var0;
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  *&self->_effectParameters.shouldBypassLowPassFilter = v6;
  self->_effectParameters.effectMix = var2;
  v8 = [(NSMutableSet *)self->_effectAudioTapContexts copy];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        effectProcessor = [*(*(&v15 + 1) + 8 * v12) effectProcessor];
        [effectProcessor setEffectParameters:v6 effectMixFadeDuration:{LODWORD(var2), duration}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_unprepareAudioProcessingWithEffectAudioTapContext:(id)context
{
  contextCopy = context;
  effectProcessor = self->_effectProcessor;
  if (effectProcessor && [(TLAttentionAwarenessEffectProcessor *)effectProcessor isStarted])
  {
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(TLAttentionAwarenessEffectCoordinator *)self _unprepareAudioProcessingWithEffectAudioTapContext:v6];
    }

    effectProcessor = [contextCopy effectProcessor];
    [effectProcessor stop];
  }
}

- (void)_finalizeAudioProcessingWithEffectAudioTapContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [contextCopy setEffectProcessor:0];
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)selfCopy->_effectAudioTapContexts removeObject:contextCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_prepareAudioProcessingWithEffectAudioTapContext:(uint64_t)a1 maximumNumberOfFrames:(NSObject *)a2 processingFormat:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1D9356000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: starting TLAttentionAwarenessEffectProcessor", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_unprepareAudioProcessingWithEffectAudioTapContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1D9356000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: stopping TLAttentionAwarenessEffectProcessor", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_processAudioWithEffectAudioTapContext:(os_log_t)log bufferList:numberOfFramesRequested:numberOfFramesToProcess:.cold.1(unsigned int a1, unsigned int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1D9356000, log, OS_LOG_TYPE_ERROR, "{public}@: Failed to process and render AudioBufferList. { requestedFrames=%lu, framesToProcess=%lu }", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end