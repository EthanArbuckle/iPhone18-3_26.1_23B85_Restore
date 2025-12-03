@interface _UIFeedbackSystemSoundEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback;
+ (id)_internalQueue;
+ (id)sharedEngine;
- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time;
- (BOOL)_internal_prepareSystemSoundID:(unsigned int)d forBeingActive:(BOOL)active;
- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block;
- (void)_internal_performForEachSSIDsInFeedbacks:(id)feedbacks block:(id)block;
- (void)_internal_playFeedbackDataNow:(id)now forFeedback:(id)feedback withOptions:(id)options;
- (void)_internal_startWarmingFeedbacks:(id)feedbacks;
- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback;
- (void)_internal_stopWarmingFeedbacks:(id)feedbacks;
- (void)_internal_updateSuspension;
- (void)_playFeedback:(id)feedback atTime:(double)time;
- (void)_stopFeedback:(id)feedback;
@end

@implementation _UIFeedbackSystemSoundEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___UIFeedbackSystemSoundEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A688 != -1)
  {
    dispatch_once(&qword_1ED49A688, block);
  }

  v2 = qword_1ED49A690;

  return v2;
}

+ (id)_internalQueue
{
  if (qword_1ED49A680 != -1)
  {
    dispatch_once(&qword_1ED49A680, &__block_literal_global_215);
  }

  v3 = _MergedGlobals_5_10;

  return v3;
}

- (void)_internal_updateSuspension
{
  v29 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  v26.receiver = self;
  v26.super_class = _UIFeedbackSystemSoundEngine;
  [(_UIFeedbackEngine *)&v26 _internal_updateSuspension];
  if ([(_UIFeedbackEngine *)self _internal_isSuspended])
  {
    if ([(NSCountedSet *)self->_warmSSIDs count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v3 = self->_warmSSIDs;
      v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v23;
        do
        {
          v7 = 0;
          do
          {
            if (*v23 != v6)
            {
              objc_enumerationMutation(v3);
            }

            -[_UIFeedbackSystemSoundEngine _internal_prepareSystemSoundID:forBeingActive:](self, "_internal_prepareSystemSoundID:forBeingActive:", [*(*(&v22 + 1) + 8 * v7++) unsignedIntValue], 0);
          }

          while (v5 != v7);
          v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v5);
      }

      v8 = [(NSCountedSet *)self->_warmSSIDs copy];
      suspendedSSIDs = self->_suspendedSSIDs;
      self->_suspendedSSIDs = v8;

      [(NSCountedSet *)self->_warmSSIDs removeAllObjects];
    }
  }

  else if ([(NSCountedSet *)self->_suspendedSSIDs count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_suspendedSSIDs;
    v11 = [(NSCountedSet *)v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          -[_UIFeedbackSystemSoundEngine _internal_prepareSystemSoundID:forBeingActive:](self, "_internal_prepareSystemSoundID:forBeingActive:", [*(*(&v18 + 1) + 8 * v14++) unsignedIntValue], 1);
        }

        while (v12 != v14);
        v12 = [(NSCountedSet *)v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v12);
    }

    v15 = [(NSCountedSet *)self->_suspendedSSIDs copy];
    warmSSIDs = self->_warmSSIDs;
    self->_warmSSIDs = v15;

    v17 = self->_suspendedSSIDs;
    self->_suspendedSSIDs = 0;
  }
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback
{
  _allSystemSoundIDs = [feedback _allSystemSoundIDs];
  v4 = [_allSystemSoundIDs count] != 0;

  return v4;
}

- (BOOL)_internal_prepareSystemSoundID:(unsigned int)d forBeingActive:(BOOL)active
{
  activeCopy = active;
  dCopy = d;
  [objc_opt_class() _internalQueue];

  v10 = activeCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getAudioServicesSetPropertySymbolLoc_ptr;
  v20 = getAudioServicesSetPropertySymbolLoc_ptr;
  if (!getAudioServicesSetPropertySymbolLoc_ptr)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getAudioServicesSetPropertySymbolLoc_block_invoke;
    v15 = &unk_1E70F2F20;
    v16 = &v17;
    v6 = AudioToolboxLibrary();
    v18[3] = dlsym(v6, "AudioServicesSetProperty");
    getAudioServicesSetPropertySymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v5)
  {
    return v5(1633907828, 4, &dCopy, 4, &v10) == 0;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus __AudioServicesSetProperty(AudioServicesPropertyID, UInt32, const void * _Nullable, UInt32, const void *)"}];
  [currentHandler handleFailureInFunction:v9 file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)_internal_performForEachSSIDsInFeedbacks:(id)feedbacks block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  feedbacksCopy = feedbacks;
  blockCopy = block;
  [objc_opt_class() _internalQueue];

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = feedbacksCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        _allSystemSoundIDs = [*(*(&v17 + 1) + 8 * v12) _allSystemSoundIDs];
        [indexSet addIndexes:_allSystemSoundIDs];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79___UIFeedbackSystemSoundEngine__internal_performForEachSSIDsInFeedbacks_block___block_invoke;
  v15[3] = &unk_1E7107F70;
  v16 = blockCopy;
  v14 = blockCopy;
  [indexSet enumerateIndexesUsingBlock:v15];
}

- (void)_internal_startWarmingFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  [objc_opt_class() _internalQueue];

  if (!self->_warmSSIDs)
  {
    v5 = [MEMORY[0x1E696AB50] set];
    warmSSIDs = self->_warmSSIDs;
    self->_warmSSIDs = v5;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___UIFeedbackSystemSoundEngine__internal_startWarmingFeedbacks___block_invoke;
  v7[3] = &unk_1E7107F98;
  v7[4] = self;
  [(_UIFeedbackSystemSoundEngine *)self _internal_performForEachSSIDsInFeedbacks:feedbacksCopy block:v7];
}

- (void)_internal_stopWarmingFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  [objc_opt_class() _internalQueue];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___UIFeedbackSystemSoundEngine__internal_stopWarmingFeedbacks___block_invoke;
  v5[3] = &unk_1E7107F98;
  v5[4] = self;
  [(_UIFeedbackSystemSoundEngine *)self _internal_performForEachSSIDsInFeedbacks:feedbacksCopy block:v5];
}

- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block
{
  blockCopy = block;
  [objc_opt_class() _internalQueue];

  blockCopy[2](blockCopy, self);
}

- (void)_playFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  _internalQueue = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIFeedbackSystemSoundEngine__playFeedback_atTime___block_invoke;
  v14[3] = &unk_1E7107CE8;
  v14[4] = self;
  v15 = _effectiveFeedbackData;
  v16 = feedbackCopy;
  timeCopy = time;
  v9 = _internalQueue;
  if (!_internalQueue)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = _internalQueue;
  v12 = feedbackCopy;
  v13 = _effectiveFeedbackData;
  dispatch_async(v9, v14);
}

- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v11 = [dataCopy count];
  if (has_internal_diagnostics)
  {
    if (v11 != 1)
    {
      v35 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = [dataCopy count];
        _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "_UIFeedbackSystemSoundEngine only supports playing single feedbacks. Instead got: %lu", &buf, 0xCu);
      }
    }
  }

  else if (v11 != 1)
  {
    v36 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A698) + 8);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = v36;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [dataCopy count];
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "_UIFeedbackSystemSoundEngine only supports playing single feedbacks. Instead got: %lu", &buf, 0xCu);
    }
  }

  firstObject = [dataCopy firstObject];
  effectiveEnabledFeedbackTypes = [firstObject effectiveEnabledFeedbackTypes];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__79;
  v65 = __Block_byref_object_dispose__79;
  v66 = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __78___UIFeedbackSystemSoundEngine__internal_playFeedbackData_forFeedback_atTime___block_invoke;
  v56 = &unk_1E7107FC0;
  p_buf = &buf;
  v14 = effectiveEnabledFeedbackTypes & 3;
  if (v14 != 3)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v15 = qword_1ED49A6A8;
    v61 = qword_1ED49A6A8;
    if (!qword_1ED49A6A8)
    {
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __getkAudioServicesPlaySystemSoundOptionFlagsKeySymbolLoc_block_invoke;
      v51 = &unk_1E70F2F20;
      v52 = &v58;
      v16 = AudioToolboxLibrary();
      v59[3] = dlsym(v16, "kAudioServicesPlaySystemSoundOptionFlagsKey");
      qword_1ED49A6A8 = *(*(v52 + 1) + 24);
      v15 = v59[3];
    }

    _Block_object_dispose(&v58, 8);
    if (!v15)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAudioServicesPlaySystemSoundOptionFlagsKey(void)"];
      [currentHandler handleFailureInFunction:v40 file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:27 description:{@"%s", dlerror()}];

      goto LABEL_26;
    }

    v17 = *v15;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14 ^ 3u];
    v55(v54, v17, v18);
  }

  audioParameters = [firstObject audioParameters];
  [audioParameters _effectiveVolume];
  v21 = v20;

  if (v21 >= 1.0)
  {
    goto LABEL_14;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v22 = qword_1ED49A6B0;
  v61 = qword_1ED49A6B0;
  if (!qword_1ED49A6B0)
  {
    v48 = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __getkAudioServicesPlaySystemSoundOptionVolumeKeySymbolLoc_block_invoke;
    v51 = &unk_1E70F2F20;
    v52 = &v58;
    v23 = AudioToolboxLibrary();
    v59[3] = dlsym(v23, "kAudioServicesPlaySystemSoundOptionVolumeKey");
    qword_1ED49A6B0 = *(*(v52 + 1) + 24);
    v22 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v22)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAudioServicesPlaySystemSoundOptionVolumeKey(void)"];
    [currentHandler2 handleFailureInFunction:v42 file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:28 description:{@"%s", dlerror()}];

LABEL_26:
    __break(1u);
  }

  v24 = *v22;
  *&v25 = v21;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v55(v54, v24, v26);

LABEL_14:
  [(_UIFeedbackEngine *)self currentTime];
  v28 = time - v27;
  if (v28 <= 0.0)
  {
    [(_UIFeedbackSystemSoundEngine *)self _internal_playFeedbackDataNow:firstObject forFeedback:feedbackCopy withOptions:*(*(&buf + 1) + 40)];
  }

  else
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__79;
    v52 = __Block_byref_object_dispose__79;
    v53 = 0;
    _internalQueue = [objc_opt_class() _internalQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __78___UIFeedbackSystemSoundEngine__internal_playFeedbackData_forFeedback_atTime___block_invoke_2;
    v43[3] = &unk_1E7107FE8;
    v43[4] = self;
    v44 = firstObject;
    v30 = feedbackCopy;
    v45 = v30;
    v46 = &buf;
    v47 = &v48;
    v31 = _UIFeedbackPreciseDispatchAfter(_internalQueue, v43, v28);
    v32 = *(v49 + 40);
    *(v49 + 40) = v31;

    systemSoundSources = [v30 systemSoundSources];
    [systemSoundSources addObject:*(v49 + 40)];

    _Block_object_dispose(&v48, 8);
  }

  _Block_object_dispose(&buf, 8);

  return 1;
}

- (void)_internal_playFeedbackDataNow:(id)now forFeedback:(id)feedback withOptions:(id)options
{
  nowCopy = now;
  feedbackCopy = feedback;
  optionsCopy = options;
  [objc_opt_class() _internalQueue];

  effectiveSystemSoundID = [nowCopy effectiveSystemSoundID];
  [(_UIFeedbackEngine *)self currentTime];
  [(_UIFeedbackEngine *)self _internal_willPlayFeedback:feedbackCopy atTime:?];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v12 = getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_ptr;
  v19 = getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_ptr;
  if (!getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_ptr)
  {
    v13 = AudioToolboxLibrary();
    v17[3] = dlsym(v13, "AudioServicesPlaySystemSoundWithOptions");
    getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_ptr = v17[3];
    v12 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v12)
  {
    v12(effectiveSystemSoundID, optionsCopy, 0);
    kdebug_trace();
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __AudioServicesPlaySystemSoundWithOptions(SystemSoundID, CFDictionaryRef, __strong dispatch_block_t)"}];
    [currentHandler handleFailureInFunction:v15 file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_stopFeedback:(id)feedback
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIFeedbackSystemSoundEngine__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v13 = _effectiveFeedbackData;
  v14 = feedbackCopy;
  v7 = _internalQueue;
  if (!_internalQueue)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = _internalQueue;
  v10 = feedbackCopy;
  v11 = _effectiveFeedbackData;
  dispatch_async(v7, block);
}

- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback
{
  v38 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];
  p_buf = &buf;

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = [dataCopy count];
  if (has_internal_diagnostics)
  {
    if (v9 != 1)
    {
      v20 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v24 = [dataCopy count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v24;
        _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "_UIFeedbackSystemSoundEngine only supports playing single feedbacks. Instead got: %lu", &buf, 0xCu);
      }
    }
  }

  else if (v9 != 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    firstObject = [dataCopy firstObject];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    systemSoundSources = [feedbackCopy systemSoundSources];
    v12 = [systemSoundSources countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v12)
    {
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(systemSoundSources);
          }

          dispatch_source_cancel(*(*(&v25 + 1) + 8 * i));
        }

        v12 = [systemSoundSources countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v12);
    }

    systemSoundSources2 = [feedbackCopy systemSoundSources];
    [systemSoundSources2 removeAllObjects];

    p_buf = [firstObject effectiveSystemSoundID];
    v16 = +[_UIFeedbackSystemSoundEngine sharedEngine];
    [v16 _internal_willCancelFeedback:feedbackCopy];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v17 = off_1ED49A6B8;
    v32 = off_1ED49A6B8;
    if (!off_1ED49A6B8)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v35 = __getAudioServicesStopSystemSoundSymbolLoc_block_invoke;
      v36 = &unk_1E70F2F20;
      v37 = &v29;
      v18 = AudioToolboxLibrary();
      v19 = dlsym(v18, "AudioServicesStopSystemSound");
      *(v37[1] + 24) = v19;
      off_1ED49A6B8 = *(v37[1] + 24);
      v17 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (v17)
    {
      break;
    }

    dataCopy = [MEMORY[0x1E696AAA8] currentHandler];
    feedbackCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __AudioServicesStopSystemSound(SystemSoundID, Boolean)"}];
    [dataCopy handleFailureInFunction:feedbackCopy file:@"_UIFeedbackSystemSoundEngine.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_19:
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A6A0) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = [dataCopy count];
      LODWORD(buf) = 134217984;
      *(p_buf + 4) = v23;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "_UIFeedbackSystemSoundEngine only supports playing single feedbacks. Instead got: %lu", &buf, 0xCu);
    }
  }

  v17(p_buf, 1);
}

@end