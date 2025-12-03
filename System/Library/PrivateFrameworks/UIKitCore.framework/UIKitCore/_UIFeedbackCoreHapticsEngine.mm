@interface _UIFeedbackCoreHapticsEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback allowsIgnoreCapture:(BOOL)capture;
+ (id)_internalQueue;
+ (id)sharedEngine;
+ (void)_setHapticEngineCreationBlock:(id)block;
- (BOOL)_internal_initializeCoreHapticsEngine;
- (_UIFeedbackCoreHapticsEngine)init;
- (id)_internal_createCoreHapticsEngine;
- (void)_coreHapticsEngineStoppedForReason:(int64_t)reason;
- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion;
- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)completion;
- (void)_internal_coreHapticsEngineFinishedWithError:(id)error completion:(id)completion;
- (void)_internal_coreHapticsEngineStoppedForReason:(int64_t)reason;
- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block;
- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)completion;
- (void)_internal_resetCoreHapticsEngine;
- (void)_internal_startRunningFeedbackPlayerWithCompletion:(id)completion;
- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)completion;
- (void)_resetCoreHapticsEngine;
@end

@implementation _UIFeedbackCoreHapticsEngine

- (id)_internal_createCoreHapticsEngine
{
  v56 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v3 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0D0) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v6 = v3;
      selfCopy = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      LODWORD(buf) = 138412290;
      *(&buf + 4) = selfCopy;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "creating core haptics engine for %@", &buf, 0xCu);
    }
  }

  if (_MergedGlobals_3_9)
  {
    v8 = (*(_MergedGlobals_3_9 + 16))();
    v9 = 0;
    goto LABEL_18;
  }

  v10 = getCHHapticEngineOptionKeyLocality();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v11 = qword_1ED49A1C8;
  v48 = qword_1ED49A1C8;
  v49[0] = v10;
  if (!qword_1ED49A1C8)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v53 = __getCHHapticLocalityFullGamutSymbolLoc_block_invoke;
    v54 = &unk_1E70F2F20;
    v55 = &v45;
    v12 = CoreHapticsLibrary_0();
    v13 = dlsym(v12, "CHHapticLocalityFullGamut");
    *(v55[1] + 24) = v13;
    qword_1ED49A1C8 = *(v55[1] + 24);
    v11 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticLocality getCHHapticLocalityFullGamut(void)"];
    [currentHandler handleFailureInFunction:v35 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:29 description:{@"%s", dlerror()}];

    goto LABEL_27;
  }

  v14 = *v11;
  v50 = v14;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v15 = qword_1ED49A1D0;
  v48 = qword_1ED49A1D0;
  if (!qword_1ED49A1D0)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v53 = __getCHHapticEngineOptionKeyUsageCategorySymbolLoc_block_invoke;
    v54 = &unk_1E70F2F20;
    v55 = &v45;
    v16 = CoreHapticsLibrary_0();
    v17 = dlsym(v16, "CHHapticEngineOptionKeyUsageCategory");
    *(v55[1] + 24) = v17;
    qword_1ED49A1D0 = *(v55[1] + 24);
    v15 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v15)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEngineOptionKey getCHHapticEngineOptionKeyUsageCategory(void)"];
    [currentHandler2 handleFailureInFunction:v37 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:31 description:{@"%s", dlerror()}];

    goto LABEL_27;
  }

  v18 = *v15;
  v49[1] = v18;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v19 = qword_1ED49A1D8;
  v48 = qword_1ED49A1D8;
  if (!qword_1ED49A1D8)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v53 = __getCHHapticUsageCategoryUIFeedbackSymbolLoc_block_invoke;
    v54 = &unk_1E70F2F20;
    v55 = &v45;
    v20 = CoreHapticsLibrary_0();
    v21 = dlsym(v20, "CHHapticUsageCategoryUIFeedback");
    *(v55[1] + 24) = v21;
    qword_1ED49A1D8 = *(v55[1] + 24);
    v19 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v19)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticUsageCategory getCHHapticUsageCategoryUIFeedback(void)"];
    [currentHandler3 handleFailureInFunction:v39 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:32 description:{@"%s", dlerror()}];

LABEL_27:
    __break(1u);
  }

  v51 = *v19;
  v22 = MEMORY[0x1E695DF20];
  v23 = v51;
  v24 = [v22 dictionaryWithObjects:&v50 forKeys:v49 count:2];

  _additionalEngineOptions = [objc_opt_class() _additionalEngineOptions];
  if (_additionalEngineOptions)
  {
    v26 = [v24 bs_dictionaryByAddingEntriesFromDictionary:_additionalEngineOptions];

    v24 = v26;
  }

  v44 = 0;
  v8 = [objc_alloc(getCHHapticEngineClass()) initWithAudioSession:0 sessionIsShared:0 options:v24 error:&v44];
  v9 = v44;

LABEL_18:
  if (!v9 && v8)
  {
    objc_initWeak(&buf, self);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __65___UIFeedbackCoreHapticsEngine__internal_createCoreHapticsEngine__block_invoke;
    v42[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v43, &buf);
    [(CHHapticEngine *)v8 setStoppedHandler:v42];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65___UIFeedbackCoreHapticsEngine__internal_createCoreHapticsEngine__block_invoke_12;
    v40[3] = &unk_1E70F5A28;
    objc_copyWeak(&v41, &buf);
    [(CHHapticEngine *)v8 setResetHandler:v40];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&buf);
  }

  v27 = [MEMORY[0x1E695DFA8] set];
  playersInUse = self->_playersInUse;
  self->_playersInUse = v27;

  v29 = [MEMORY[0x1E695DFA8] set];
  playersToInvalidate = self->_playersToInvalidate;
  self->_playersToInvalidate = v29;

  coreHapticsEngine = self->_coreHapticsEngine;
  self->_coreHapticsEngine = v8;
  v32 = v8;

  return v9;
}

- (BOOL)_internal_initializeCoreHapticsEngine
{
  v15 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];

  if (coreHapticsEngine || ([(_UIFeedbackCoreHapticsEngine *)self _internal_createCoreHapticsEngine], (coreHapticsEngine2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    coreHapticsEngine2 = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];

    if (coreHapticsEngine2)
    {
      return 1;
    }
  }

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_initializeCoreHapticsEngine___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v9 = v6;
      selfCopy = [v7 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412546;
      v12 = selfCopy;
      v13 = 2112;
      v14 = coreHapticsEngine2;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "failed initializing core haptics engine for %@: %@", buf, 0x16u);
    }
  }

  [(_UIFeedbackCoreHapticsEngine *)self _internal_resetCoreHapticsEngine];

  return 0;
}

+ (id)_internalQueue
{
  if (qword_1ED49A0B0 != -1)
  {
    dispatch_once(&qword_1ED49A0B0, &__block_literal_global_212);
  }

  v3 = qword_1ED49A0A8;

  return v3;
}

- (_UIFeedbackCoreHapticsEngine)init
{
  v3.receiver = self;
  v3.super_class = _UIFeedbackCoreHapticsEngine;
  return [(_UIFeedbackEngine *)&v3 init];
}

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___UIFeedbackCoreHapticsEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49A0B8 != -1)
  {
    dispatch_once(&qword_1ED49A0B8, block);
  }

  v2 = qword_1ED49A0C0;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)feedback allowsIgnoreCapture:(BOOL)capture
{
  captureCopy = capture;
  feedbackCopy = feedback;
  v6 = +[UIDevice currentDevice];
  _feedbackSupportLevel = [v6 _feedbackSupportLevel];

  if (_feedbackSupportLevel < 2)
  {
LABEL_2:
    LOBYTE(captureCopy) = 0;
    goto LABEL_7;
  }

  if ((~[feedbackCopy hapticOutputMode] & 5) != 0 || captureCopy)
  {
    if (([feedbackCopy _effectiveFeedbackTypes] & 3) != 0)
    {
      v8 = objc_opt_respondsToSelector();
      v9 = objc_opt_respondsToSelector();
      v10 = objc_opt_respondsToSelector();
      v11 = _coreHapticsEventTypeForEffectiveEventType([feedbackCopy _effectiveEventType], 0);
      LOBYTE(captureCopy) = v9 | v10 | v8 | (v11 != 0);

      goto LABEL_7;
    }

    goto LABEL_2;
  }

LABEL_7:

  return captureCopy & 1;
}

+ (void)_setHapticEngineCreationBlock:(id)block
{
  v3 = _Block_copy(block);
  v4 = _MergedGlobals_3_9;
  _MergedGlobals_3_9 = v3;
}

- (void)_resetCoreHapticsEngine
{
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___UIFeedbackCoreHapticsEngine__resetCoreHapticsEngine__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  v4 = _internalQueue;
  if (!_internalQueue)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = _internalQueue;
  dispatch_async(v4, block);
}

- (void)_internal_resetCoreHapticsEngine
{
  v21 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  playersToInvalidate = self->_playersToInvalidate;
  allObjects = [(NSMutableSet *)self->_playersInUse allObjects];
  [(NSMutableSet *)playersToInvalidate addObjectsFromArray:allObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_playersToInvalidate;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        invalidationBlock = [v10 invalidationBlock];

        if (invalidationBlock)
        {
          invalidationBlock2 = [v10 invalidationBlock];
          invalidationBlock2[2]();

          [v10 setInvalidationBlock:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  coreHapticsEngine = self->_coreHapticsEngine;
  self->_coreHapticsEngine = 0;

  v14 = self->_playersToInvalidate;
  self->_playersToInvalidate = 0;

  playersInUse = self->_playersInUse;
  self->_playersInUse = 0;

  [(_UIFeedbackEngine *)self _setState:0];
  [(_UIFeedbackEngine *)self _internal_teardownBackgroundTask];
}

- (void)_coreHapticsEngineStoppedForReason:(int64_t)reason
{
  _internalQueue = [objc_opt_class() _internalQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67___UIFeedbackCoreHapticsEngine__coreHapticsEngineStoppedForReason___block_invoke;
  v9[3] = &unk_1E70F32F0;
  v9[4] = self;
  v9[5] = reason;
  v6 = _internalQueue;
  if (!_internalQueue)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = _internalQueue;
  dispatch_async(v6, v9);
}

- (void)_internal_coreHapticsEngineStoppedForReason:(int64_t)reason
{
  [objc_opt_class() _internalQueue];

  if ((reason + 1) <= 5 && ((1 << (reason + 1)) & 0x2D) != 0)
  {

    [(_UIFeedbackEngine *)self _setState:0];
  }
}

- (void)_internal_coreHapticsEngineFinishedWithError:(id)error completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0D8) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v11 = v8;
      selfCopy = [v9 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v27 = selfCopy;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "core haptics engine finished for %@", buf, 0xCu);
    }
  }

  if (errorCopy)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0E0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v16 = v13;
        selfCopy2 = [v14 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy2), selfCopy2];

        *buf = 138412546;
        v27 = selfCopy2;
        v28 = 2112;
        v29 = errorCopy;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "core haptics engine finished for %@ with error: %@", buf, 0x16u);
      }
    }

    [(_UIFeedbackCoreHapticsEngine *)self _internal_resetCoreHapticsEngine];
  }

  else if ([(_UIFeedbackEngine *)self _state]!= 5)
  {
    v24 = 0;
    goto LABEL_14;
  }

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0E8) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x1E696AEC0];
      selfCopy3 = self;
      v21 = v18;
      selfCopy3 = [v19 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy3), selfCopy3];

      *buf = 138412290;
      v27 = selfCopy3;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "stopping core haptics engine for %@", buf, 0xCu);
    }
  }

  coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88___UIFeedbackCoreHapticsEngine__internal_coreHapticsEngineFinishedWithError_completion___block_invoke;
  v25[3] = &unk_1E70FD7F8;
  v25[4] = self;
  [coreHapticsEngine stopWithCompletionHandler:v25];

  v24 = 1;
LABEL_14:
  completionCopy[2](completionCopy, v24);
}

- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  if ([(_UIFeedbackCoreHapticsEngine *)self _internal_initializeCoreHapticsEngine]&& [(_UIFeedbackEngine *)self _state])
  {
    coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80___UIFeedbackCoreHapticsEngine__internal_prewarmUnderlyingPlayerWithCompletion___block_invoke;
    v6[3] = &unk_1E7107C48;
    v6[4] = self;
    v7 = completionCopy;
    [coreHapticsEngine prewarmWithCompletionHandler:v6];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = v5;
      selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v12 = selfCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_internal_cooldownUnderlyingPlayerIfPossible %@", buf, 0xCu);
    }
  }

  coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
  [coreHapticsEngine stopPrewarm];

  completionCopy[2](completionCopy, 1);
}

- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_activateUnderlyingPlayerWithCompletion____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = v5;
      selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v11 = selfCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "starting core haptics engine for %@", buf, 0xCu);
    }
  }

  if ([(_UIFeedbackCoreHapticsEngine *)self _internal_initializeCoreHapticsEngine]&& [(_UIFeedbackEngine *)self _state]&& [(_UIFeedbackEngine *)self _state]!= 2)
  {
    [(_UIFeedbackCoreHapticsEngine *)self _internal_startRunningFeedbackPlayerWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_teardownUnderlyingPlayerIfPossibleWithCompletion____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = v5;
      selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v19 = selfCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_internal_teardownUnderlyingPlayerIfPossible %@", buf, 0xCu);
    }
  }

  if (![(_UIFeedbackEngine *)self _state]|| ([(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    [(_UIFeedbackEngine *)self _setState:5];
    playersToInvalidate = self->_playersToInvalidate;
    allObjects = [(NSMutableSet *)self->_playersInUse allObjects];
    [(NSMutableSet *)playersToInvalidate addObjectsFromArray:allObjects];

    [(NSMutableSet *)self->_playersInUse removeAllObjects];
    objc_initWeak(buf, self);
    coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91___UIFeedbackCoreHapticsEngine__internal_teardownUnderlyingPlayerIfPossibleWithCompletion___block_invoke;
    v15[3] = &unk_1E7107C70;
    objc_copyWeak(&v17, buf);
    v15[4] = self;
    v16 = completionCopy;
    [coreHapticsEngine notifyWhenPlayersFinished:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)_internal_startRunningFeedbackPlayerWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  coreHapticsEngine = [(_UIFeedbackCoreHapticsEngine *)self coreHapticsEngine];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83___UIFeedbackCoreHapticsEngine__internal_startRunningFeedbackPlayerWithCompletion___block_invoke;
  v7[3] = &unk_1E7107C48;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [coreHapticsEngine startWithCompletionHandler:v7];
}

- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block
{
  blockCopy = block;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __91___UIFeedbackCoreHapticsEngine__internal_dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke;
  v11 = &unk_1E70FE248;
  selfCopy = self;
  v13 = blockCopy;
  v5 = blockCopy;
  v6 = _Block_copy(&v8);
  v7 = [(_UIFeedbackEngine *)self _state:v8];
  if (v7 <= 2)
  {
    if (v7 >= 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v6[2](v6, 0);
    goto LABEL_8;
  }

  switch(v7)
  {
    case 3:
      [(_UIFeedbackEngine *)self _internal_performAtState:4 block:v6];
      break;
    case 4:
      v6[2](v6, 1);
      break;
    case 5:
      goto LABEL_7;
  }

LABEL_8:
}

@end