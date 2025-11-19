@interface _UIFeedbackEngine
+ (BOOL)_supportsPlayingFeedback:(id)a3;
+ (id)engineForFeedback:(id)a3;
+ (id)sharedEngine;
- (NSString)_stats_key;
- (_UIFeedbackEngine)init;
- (id)_activationCountStatistics;
- (id)_activationDurationStatistics;
- (id)_outOfChannelsCountStatistics;
- (id)_prewarmCountStatistics;
- (id)_prewarmDurationStatistics;
- (id)description;
- (void)_activate:(BOOL)a3 andPerformWhenRunning:(id)a4;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidResume:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_applicationWillSuspend:(id)a3;
- (void)_cooldown;
- (void)_deactivate;
- (void)_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3;
- (void)_hostDidEnterBackground:(id)a3;
- (void)_hostWillEnterForeground:(id)a3;
- (void)_internal_activate:(BOOL)a3 andPerformWhenRunning:(id)a4;
- (void)_internal_activateEngine;
- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)a3;
- (void)_internal_cooldown;
- (void)_internal_cooldownEngineIfPossible;
- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)a3;
- (void)_internal_deactivate;
- (void)_internal_deactivateEngineIfPossible;
- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3;
- (void)_internal_performAtState:(int64_t)a3 block:(id)a4;
- (void)_internal_playFeedbackData:(id)a3 atTime:(double)a4 feedback:(id)a5 effectiveFeedbackType:(unint64_t)a6 existingPlayer:(id)a7 withCompletionBlock:(id)a8;
- (void)_internal_prewarm:(BOOL)a3 andPerformWhenPrewarmed:(id)a4;
- (void)_internal_prewarmEngine;
- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)a3;
- (void)_internal_serviceBlocksForState:(int64_t)a3 withSuccess:(BOOL)a4;
- (void)_internal_setSuspended:(BOOL)a3;
- (void)_internal_setupBackgroundTask;
- (void)_internal_startWarmingFeedbacks:(id)a3;
- (void)_internal_stopWarmingFeedbacks:(id)a3;
- (void)_internal_teardownBackgroundTask;
- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)a3;
- (void)_internal_updateSuspension;
- (void)_internal_willCancelFeedback:(id)a3;
- (void)_internal_willPlayFeedback:(id)a3 atTime:(double)a4;
- (void)_playFeedback:(id)a3 atTime:(double)a4 withCompletionBlock:(id)a5;
- (void)_prewarm:(BOOL)a3 andPerformWhenPrewarmed:(id)a4;
- (void)_remoteViewControllerWillDisconnect:(id)a3;
- (void)_sb_stuckInNonInactiveState;
- (void)_setState:(int64_t)a3;
- (void)_setSuspended:(BOOL)a3;
- (void)_startWarmingFeedbacks:(id)a3;
- (void)_stats_outOfChannels;
- (void)_stats_stateDidChangeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)_stopWarmingFeedbacks:(id)a3;
- (void)_suspendEngineNow;
- (void)runWhenReady:(id)a3;
@end

@implementation _UIFeedbackEngine

- (id)_activationCountStatistics
{
  v2 = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineActivationCountWithSuffix:v2];

  return v3;
}

- (id)_activationDurationStatistics
{
  v2 = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineActivationDurationWithSuffix:v2];

  return v3;
}

- (_UIFeedbackEngine)init
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIFeedbackEngine;
  v2 = [(_UIFeedbackEngine *)&v18 init];
  v2->_enabled = 1;
  v2->_backgroundTaskIdentifier = 0;
  v3 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
  playerDequeueBlocks = v2->_playerDequeueBlocks;
  v2->_playerDequeueBlocks = v3;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  if ((_UIApplicationIsExtension() & 1) != 0 || _UIApplicationMayVendViews())
  {
    [v5 addObserver:v2 selector:sel__hostDidEnterBackground_ name:0x1EFBB47B0 object:0];
    [v5 addObserver:v2 selector:sel__hostWillEnterForeground_ name:0x1EFBB47D0 object:0];
    v6 = sel__remoteViewControllerWillDisconnect_;
    v7 = @"_UIViewServiceRemoteViewControllerWillDisconnectNotification";
    v8 = v5;
    v9 = v2;
    v10 = 0;
  }

  else
  {
    if (([UIApp isSuspended] & 1) != 0 || objc_msgSend(UIApp, "isSuspendedEventsOnly"))
    {
      if (qword_1ED499ED0 != -1)
      {
        dispatch_once(&qword_1ED499ED0, &__block_literal_global_290);
      }

      if ((byte_1ED499E51 & 1) == 0)
      {
        v2->_suspended = 1;
        v2->_suspensionState = 0;
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v11 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E68) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = MEMORY[0x1E696AEC0];
            v13 = v2;
            v14 = v11;
            v15 = [v12 stringWithFormat:@"<%s: %p>", object_getClassName(v13), v13];

            *buf = 138412290;
            v20 = v15;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "creating engine while app suspended %@", buf, 0xCu);
          }
        }
      }
    }

    [v5 addObserver:v2 selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
    [v5 addObserver:v2 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:UIApp];
    [v5 addObserver:v2 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedEventsOnlyNotification" object:UIApp];
    [v5 addObserver:v2 selector:sel__applicationDidResume_ name:@"UIApplicationResumedNotification" object:UIApp];
    [v5 addObserver:v2 selector:sel__applicationDidResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    v6 = sel__applicationDidBecomeActive_;
    v7 = @"UIApplicationDidBecomeActiveNotification";
    v10 = UIApp;
    v8 = v5;
    v9 = v2;
  }

  [v8 addObserver:v9 selector:v6 name:v7 object:v10];
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_EnableFeedbackEngineStateVisualization, @"EnableFeedbackEngineStateVisualization") & 1) == 0 && byte_1ED48AD9C)
  {
    v16 = +[_UIFeedbackVisualizer sharedVisualizer];
    [v16 addEngine:v2];
  }

  return v2;
}

- (void)_internal_activateEngine
{
  v15 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = [(_UIFeedbackEngine *)self _state];
  if (has_internal_diagnostics)
  {
    if (v4 == 3)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Attempt to activate an activating engine (%@)", buf, 0xCu);
      }
    }
  }

  else if (v4 == 3)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499E80) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Attempt to activate an activating engine (%@)", buf, 0xCu);
    }
  }

  if ([(_UIFeedbackEngine *)self numberOfClients])
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E88) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = self;
        v8 = v5;
        v9 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "activating engine %@", buf, 0xCu);
      }
    }

    [(_UIFeedbackEngine *)self _setState:3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___UIFeedbackEngine__internal_activateEngine__block_invoke;
    v12[3] = &unk_1E70F5AC0;
    v12[4] = self;
    [(_UIFeedbackEngine *)self _internal_activateUnderlyingPlayerWithCompletion:v12];
  }
}

- (void)_internal_updateSuspension
{
  [objc_opt_class() _internalQueue];

  if (![(_UIFeedbackEngine *)self _internal_isSuspended])
  {
    [(_UIFeedbackEngine *)self _internal_teardownBackgroundTask];
    suspensionState = self->_suspensionState;
    if (suspensionState == 4)
    {
      if ([(_UIFeedbackEngine *)self prewarmCount]< 1)
      {
        [(_UIFeedbackEngine *)self _internal_activateEngine];
        goto LABEL_14;
      }

      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __47___UIFeedbackEngine__internal_updateSuspension__block_invoke;
      v5[3] = &unk_1E70F5AC0;
      v5[4] = self;
      [(_UIFeedbackEngine *)self _internal_performAtState:2 block:v5];
    }

    else if (suspensionState != 2)
    {
      goto LABEL_14;
    }

    [(_UIFeedbackEngine *)self _internal_prewarmEngine];
LABEL_14:
    self->_suspensionState = 0;
    return;
  }

  v3 = [(_UIFeedbackEngine *)self _state];
  if (v3 <= 5)
  {
    self->_suspensionState = qword_18A67A008[v3];
  }

  [(_UIFeedbackEngine *)self _internal_deactivateEngineIfPossible];
  [(_UIFeedbackEngine *)self _internal_cooldownEngineIfPossible];
  if (([(_UIFeedbackEngine *)self _state]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {

    [(_UIFeedbackEngine *)self _internal_setupBackgroundTask];
  }
}

- (void)_internal_teardownBackgroundTask
{
  v14 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  v3 = [(_UIFeedbackEngine *)self _backgroundTaskIdentifier];
  if (v3)
  {
    v4 = v3;
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_teardownBackgroundTask___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = self;
        v8 = v5;
        v9 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

        *buf = 134218242;
        v11 = v4;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "ended background task with ID %ld for engine %@", buf, 0x16u);
      }
    }

    [(_UIFeedbackEngine *)self _setBackgroundTaskIdentifier:0];
    [UIApp endBackgroundTask:v4];
  }
}

- (void)_internal_prewarmEngine
{
  v10 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = [(_UIFeedbackEngine *)self _state];
  if (has_internal_diagnostics)
  {
    if (v4 == 1)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v9 = self;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Attempt to prewarm a prewarming engine (%@)", buf, 0xCu);
      }
    }
  }

  else if (v4 == 1)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_internal_prewarmEngine___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Attempt to prewarm a prewarming engine (%@)", buf, 0xCu);
    }
  }

  if ([(_UIFeedbackEngine *)self prewarmCount])
  {
    if (![(_UIFeedbackEngine *)self _state])
    {
      [(_UIFeedbackEngine *)self _setState:1];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___UIFeedbackEngine__internal_prewarmEngine__block_invoke;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [(_UIFeedbackEngine *)self _internal_prewarmUnderlyingPlayerWithCompletion:v7];
  }
}

- (id)_prewarmDurationStatistics
{
  v2 = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEnginePrewarmDurationWithSuffix:v2];

  return v3;
}

- (id)_prewarmCountStatistics
{
  v2 = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEnginePrewarmCountWithSuffix:v2];

  return v3;
}

- (void)_internal_cooldown
{
  v22 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_cooldown___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      prewarmCount = v6->_prewarmCount;
      *buf = 138412802;
      v17 = v8;
      v18 = 2048;
      v19 = prewarmCount;
      v20 = 2048;
      v21 = prewarmCount - 1;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "cooldown engine %@, prewarmCount: %ld -> %ld", buf, 0x20u);
    }
  }

  v10 = self->_prewarmCount;
  if (v10 <= 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFeedbackEngine.m" lineNumber:807 description:{@"ERROR: -[%@ %@] called more times than the feedback engine was pre-warmed", v14, v15}];

    v10 = self->_prewarmCount;
  }

  v11 = v10 - 1;
  self->_prewarmCount = v11;
  if (!v11)
  {
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      if (self->_suspensionState == 2)
      {
        self->_suspensionState = 0;
      }
    }

    else
    {
      [(_UIFeedbackEngine *)self _internal_cooldownEngineIfPossible];
    }
  }
}

- (void)_internal_cooldownEngineIfPossible
{
  v12 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v3 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_cooldownEngineIfPossible___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = self;
      v6 = v3;
      v7 = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(v5), v5];

      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "_internal_cooldownEngineIfPossible %@", buf, 0xCu);
    }
  }

  if ([(_UIFeedbackEngine *)self _state]== 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55___UIFeedbackEngine__internal_cooldownEngineIfPossible__block_invoke;
    v9[3] = &unk_1E70F5AC0;
    v9[4] = self;
    [(_UIFeedbackEngine *)self _internal_performAtState:2 block:v9];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___UIFeedbackEngine__internal_cooldownEngineIfPossible__block_invoke_2;
    v8[3] = &unk_1E70F5AC0;
    v8[4] = self;
    [(_UIFeedbackEngine *)self _internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:v8];
  }
}

- (void)_cooldown
{
  v3 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___UIFeedbackEngine__cooldown__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  v4 = v3;
  if (!v3)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = v3;
  dispatch_async(v4, block);
}

- (id)_outOfChannelsCountStatistics
{
  v2 = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineOutOfChannelsCountWithSuffix:v2];

  return v3;
}

- (void)_stats_stateDidChangeFrom:(int64_t)a3 to:(int64_t)a4
{
  if (a4 == 2)
  {
    v8 = [(_UIFeedbackEngine *)self _prewarmCountStatistics];
    [v8 incrementValueBy:1];

    v7 = [(_UIFeedbackEngine *)self _prewarmDurationStatistics];
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_6;
    }

    v6 = [(_UIFeedbackEngine *)self _activationCountStatistics];
    [v6 incrementValueBy:1];

    v7 = [(_UIFeedbackEngine *)self _activationDurationStatistics];
  }

  v9 = v7;
  [v7 startTimingForObject:self];

LABEL_6:
  if (a3 == 2)
  {
    v10 = [(_UIFeedbackEngine *)self _prewarmDurationStatistics];
  }

  else
  {
    if (a3 != 4)
    {
      return;
    }

    v10 = [(_UIFeedbackEngine *)self _activationDurationStatistics];
  }

  v11 = v10;
  [v10 recordTimingForObject:self];
}

- (void)_stats_outOfChannels
{
  v2 = [(_UIFeedbackEngine *)self _outOfChannelsCountStatistics];
  [v2 incrementValueBy:1];
}

+ (id)sharedEngine
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"_UIFeedbackEngine.m" lineNumber:176 description:@"Should use one of the subclasses"];

  return 0;
}

+ (id)engineForFeedback:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ED499E60 != -1)
  {
    dispatch_once(&qword_1ED499E60, &__block_literal_global_213);
  }

  v4 = [v3 _individualFeedbacks];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = qword_1ED499E58;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (_engineClassSupportsAllIndividualFeedbacks(v9, v4))
        {
          v6 = [v9 sharedEngine];
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

+ (BOOL)_supportsPlayingFeedback:(id)a3
{
  v4 = [a3 _individualFeedbacks];
  LOBYTE(a1) = _engineClassSupportsAllIndividualFeedbacks(a1, v4);

  return a1;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [[UIDescriptionBuilder alloc] initWithObject:self];
  v4 = NSStringFromSelector(sel_state);
  v5 = [(UIDescriptionBuilder *)v3 appendName:v4 integerValue:self->_state];

  v6 = NSStringFromSelector(sel_numberOfClients);
  v13 = v6;
  v7 = NSStringFromSelector(sel_prewarmCount);
  v14 = v7;
  v8 = NSStringFromSelector(sel__internal_isSuspended);
  v15 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v10 = [(UIDescriptionBuilder *)v3 appendKeys:v9, v13, v14];

  v11 = [(UIDescriptionBuilder *)v3 string];

  return v11;
}

- (void)_setSuspended:(BOOL)a3
{
  if (pthread_main_np() == 1)
  {
    [(NSTimer *)self->_suspensionTimer invalidate];
    suspensionTimer = self->_suspensionTimer;
    self->_suspensionTimer = 0;

    v6 = [objc_opt_class() _internalQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35___UIFeedbackEngine__setSuspended___block_invoke;
    v11[3] = &unk_1E70F35E0;
    v11[4] = self;
    v12 = a3;
    v7 = v6;
    if (!v6)
    {
      v7 = MEMORY[0x1E69E96A0];
      v8 = MEMORY[0x1E69E96A0];
    }

    v9 = v6;
    dispatch_async(v7, v11);
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Feedback", &_setSuspended____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "trying to suspend the feedback engine from a non-main thread, this is unsupported.", buf, 2u);
    }
  }
}

- (void)_internal_setSuspended:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if (!v3)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  if (qword_1ED499ED0 != -1)
  {
    dispatch_once(&qword_1ED499ED0, &__block_literal_global_290);
  }

  if (byte_1ED499E51 == 1)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E70) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = self;
        v8 = v5;
        v9 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "ignoring request to suspend due to background feedback entitlement for engine %@", buf, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v10 = 1;
LABEL_10:
  suspended = self->_suspended;
  self->_suspended = v10;
  v12 = [(_UIFeedbackEngine *)self _internal_isSuspended];
  if (suspended != v12)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v13 = v12;
      v14 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E78) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (suspended)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        if (v13)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v17 = MEMORY[0x1E696AEC0];
        v18 = self;
        v19 = v14;
        v20 = [v17 stringWithFormat:@"<%s: %p>", object_getClassName(v18), v18];

        *buf = 138412802;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "suspended changed from: %@ --> %@ for engine %@", buf, 0x20u);
      }
    }

    [(_UIFeedbackEngine *)self _internal_updateSuspension];
  }
}

- (void)_internal_performAtState:(int64_t)a3 block:(id)a4
{
  aBlock = a4;
  [objc_opt_class() _internalQueue];

  v6 = aBlock;
  if (aBlock)
  {
    completionBlocks = self->_completionBlocks;
    if (!completionBlocks)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_completionBlocks;
      self->_completionBlocks = v8;

      completionBlocks = self->_completionBlocks;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11 = [(NSMutableDictionary *)completionBlocks objectForKeyedSubscript:v10];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = self->_completionBlocks;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
    }

    v14 = _Block_copy(aBlock);
    [v11 addObject:v14];

    v6 = aBlock;
  }
}

- (void)_internal_serviceBlocksForState:(int64_t)a3 withSuccess:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)self->_completionBlocks objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_completionBlocks removeObjectForKey:v6];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_activate:(BOOL)a3 andPerformWhenRunning:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke;
    aBlock[3] = &unk_1E70F3608;
    v18 = v6;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke_3;
  v14[3] = &unk_1E70FD0C8;
  v16 = a3;
  v14[4] = self;
  v15 = v8;
  v10 = v9;
  if (!v9)
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = v9;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (void)_internal_activate:(BOOL)a3 andPerformWhenRunning:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [objc_opt_class() _internalQueue];

  if (v4)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_activate_andPerformWhenRunning____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = self;
        v10 = v7;
        v11 = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(v9), v9];

        v12 = v11;
        *buf = 138412802;
        v19 = v11;
        v20 = 2048;
        v21 = [(_UIFeedbackEngine *)v9 numberOfClients];
        v22 = 2048;
        v23 = [(_UIFeedbackEngine *)v9 numberOfClients]+ 1;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "activate engine %@, clientCount: %ld -> %ld", buf, 0x20u);
      }
    }

    ++self->_numberOfClients;
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      self->_suspensionState = 4;
      goto LABEL_20;
    }
  }

  else if ([(_UIFeedbackEngine *)self _internal_isSuspended])
  {
    goto LABEL_20;
  }

  v13 = [(_UIFeedbackEngine *)self _state];
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = self;
      v15 = 4;
      v16 = v6;
      goto LABEL_25;
    }

    if (v13 != 4)
    {
      if (v13 != 5)
      {
        goto LABEL_26;
      }

      if (![objc_opt_class() _supportsAbortingDeactivation] || !v4)
      {
        goto LABEL_12;
      }

      [(_UIFeedbackEngine *)self _setState:4];
    }

LABEL_20:
    if (v6)
    {
      (v6[2])(v6, 1);
    }

    goto LABEL_26;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    [(_UIFeedbackEngine *)self _internal_performAtState:4 block:v6];
    if (!v4)
    {
      goto LABEL_26;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62___UIFeedbackEngine__internal_activate_andPerformWhenRunning___block_invoke;
    v17[3] = &unk_1E70F5AC0;
    v17[4] = self;
    v16 = v17;
    v14 = self;
    v15 = 2;
LABEL_25:
    [(_UIFeedbackEngine *)v14 _internal_performAtState:v15 block:v16];
    goto LABEL_26;
  }

LABEL_12:
  [(_UIFeedbackEngine *)self _internal_performAtState:4 block:v6];
  if (v4)
  {
    [(_UIFeedbackEngine *)self _internal_activateEngine];
  }

LABEL_26:
}

- (void)_deactivate
{
  v3 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___UIFeedbackEngine__deactivate__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  v4 = v3;
  if (!v3)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = v3;
  dispatch_async(v4, block);
}

- (void)_internal_deactivate
{
  v20 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_deactivate___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      v9 = v8;
      *buf = 138412802;
      v15 = v8;
      v16 = 2048;
      v17 = [(_UIFeedbackEngine *)v6 numberOfClients];
      v18 = 2048;
      v19 = [(_UIFeedbackEngine *)v6 numberOfClients]- 1;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "deactivate engine %@, clientCount: %ld -> %ld", buf, 0x20u);
    }
  }

  if (![(_UIFeedbackEngine *)self numberOfClients])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFeedbackEngine.m" lineNumber:615 description:{@"ERROR: -[%@ %@] called more times than the feedback engine was activated", v12, v13}];
  }

  --self->_numberOfClients;
  if (![(_UIFeedbackEngine *)self numberOfClients])
  {
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      if (self->_suspensionState == 4)
      {
        if ([(_UIFeedbackEngine *)self prewarmCount]< 1)
        {
          self->_suspensionState = 0;
        }

        else
        {
          self->_suspensionState = 2;
        }
      }
    }

    else
    {
      [(_UIFeedbackEngine *)self _internal_deactivateEngineIfPossible];
    }
  }
}

- (void)_internal_deactivateEngineIfPossible
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  v3 = MEMORY[0x1E696AEC0];
  v4 = self;
  v5 = [v3 stringWithFormat:@"<%s: %p>", object_getClassName(v4), v4];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_deactivateEngineIfPossible___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138412802;
      v13 = v5;
      v14 = 2048;
      v15 = [(_UIFeedbackEngine *)v4 numberOfClients];
      v16 = 2048;
      v17 = [(_UIFeedbackEngine *)v4 _internal_isSuspended];
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_internal_deactivateEngineIfPossible %@, clientCount: %ld, suspended: %ld", buf, 0x20u);
    }
  }

  if ([(_UIFeedbackEngine *)v4 _state]== 3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___UIFeedbackEngine__internal_deactivateEngineIfPossible__block_invoke;
    v11[3] = &unk_1E70F5AC0;
    v11[4] = v4;
    [(_UIFeedbackEngine *)v4 _internal_performAtState:4 block:v11];
  }

  else if (![(_UIFeedbackEngine *)v4 numberOfClients]|| [(_UIFeedbackEngine *)v4 _internal_isSuspended])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57___UIFeedbackEngine__internal_deactivateEngineIfPossible__block_invoke_2;
    v8[3] = &unk_1E70F3C60;
    v9 = v5;
    v10 = v4;
    [(_UIFeedbackEngine *)v4 _internal_teardownUnderlyingPlayerIfPossibleWithCompletion:v8];
  }
}

- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v3[2](v3, 1);
}

- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v3[2](v3, 1);
}

- (void)_startWarmingFeedbacks:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___UIFeedbackEngine__startWarmingFeedbacks___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = v5;
  v9 = v4;
  dispatch_async(v6, v10);
}

- (void)_internal_startWarmingFeedbacks:(id)a3
{
  v3 = [objc_opt_class() _internalQueue];
}

- (void)_stopWarmingFeedbacks:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___UIFeedbackEngine__stopWarmingFeedbacks___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = v5;
  v9 = v4;
  dispatch_async(v6, v10);
}

- (void)_internal_stopWarmingFeedbacks:(id)a3
{
  v3 = [objc_opt_class() _internalQueue];
}

- (void)_prewarm:(BOOL)a3 andPerformWhenPrewarmed:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke;
    aBlock[3] = &unk_1E70F3608;
    v18 = v6;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke_3;
  v14[3] = &unk_1E70FD0C8;
  v16 = a3;
  v14[4] = self;
  v15 = v8;
  v10 = v9;
  if (!v9)
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = v9;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (void)_internal_prewarm:(BOOL)a3 andPerformWhenPrewarmed:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [objc_opt_class() _internalQueue];

  if (v4)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_prewarm_andPerformWhenPrewarmed____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = self;
        v10 = v7;
        v11 = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(v9), v9];

        prewarmCount = v9->_prewarmCount;
        *buf = 138412802;
        v17 = v11;
        v18 = 2048;
        v19 = prewarmCount;
        v20 = 2048;
        v21 = prewarmCount + 1;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "prewarm engine %@, prewarmCount: %ld -> %ld", buf, 0x20u);
      }
    }

    ++self->_prewarmCount;
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      if (!self->_suspensionState)
      {
        self->_suspensionState = 2;
      }

      goto LABEL_17;
    }
  }

  else if ([(_UIFeedbackEngine *)self _internal_isSuspended])
  {
LABEL_17:
    if (v6)
    {
      v6[2](v6, 1);
    }

    goto LABEL_24;
  }

  v13 = [(_UIFeedbackEngine *)self _state];
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = self;
      v15 = 4;
      goto LABEL_23;
    }

    if (v13 != 5)
    {
      if (v13 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else if (v13)
  {
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    v14 = self;
    v15 = 2;
LABEL_23:
    [(_UIFeedbackEngine *)v14 _internal_performAtState:v15 block:v6];
    goto LABEL_24;
  }

  [(_UIFeedbackEngine *)self _internal_performAtState:2 block:v6];
  if (v4)
  {
    [(_UIFeedbackEngine *)self _internal_prewarmEngine];
  }

LABEL_24:
}

- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v3[2](v3, 1);
}

- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v3[2](v3, 1);
}

- (void)_playFeedback:(id)a3 atTime:(double)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 _effectiveFeedbackData];
  v11 = [v8 _effectiveEnabledFeedbackTypes];
  v12 = [v8 _player];
  v13 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke;
  block[3] = &unk_1E7107D78;
  block[4] = self;
  v22 = v10;
  v26 = a4;
  v27 = v11;
  v23 = v8;
  v24 = v12;
  v25 = v9;
  v14 = v13;
  if (!v13)
  {
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v16 = v13;
  v17 = v9;
  v18 = v12;
  v19 = v8;
  v20 = v10;
  dispatch_async(v14, block);
}

- (void)_internal_playFeedbackData:(id)a3 atTime:(double)a4 feedback:(id)a5 effectiveFeedbackType:(unint64_t)a6 existingPlayer:(id)a7 withCompletionBlock:(id)a8
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  [objc_opt_class() _internalQueue];

  if ([(_UIFeedbackEngine *)self isEnabled])
  {
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      (*(v17 + 2))(v17, 0, 0, @"suspended");
    }

    else if ([(_UIFeedbackEngine *)self _state]== 4 || [(_UIFeedbackEngine *)self _state]== 3)
    {
      if (a6)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __121___UIFeedbackEngine__internal_playFeedbackData_atTime_feedback_effectiveFeedbackType_existingPlayer_withCompletionBlock___block_invoke;
        aBlock[3] = &unk_1E7107DA0;
        v38 = v14;
        v18 = v15;
        v39 = v18;
        v41 = a4;
        v40 = v17;
        v19 = _Block_copy(aBlock);
        v20 = v19;
        if (v16)
        {
          (*(v19 + 2))(v19, v16);
        }

        else
        {
          v21 = [(NSMapTable *)self->_playerDequeueBlocks objectForKey:v18];
          if (v21)
          {
            v22 = v21;
            if ((_UIFeedbackLoggingDisabled & 1) == 0)
            {
              v23 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E98) + 8);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v23;
                v25 = _UIDescriptionBuilderLightDescription(v18);
                *buf = 138412290;
                v43 = v25;
                _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "player dequeue needed - existing request for feedback %@", buf, 0xCu);
              }
            }

            v26 = _Block_copy(v20);
            [v22 addObject:v26];
          }

          else
          {
            if ((_UIFeedbackLoggingDisabled & 1) == 0)
            {
              v27 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED499E90) + 8);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = _UIDescriptionBuilderLightDescription(v18);
                *buf = 138412290;
                v43 = v29;
                _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "player dequeue needed - initial request for feedback %@", buf, 0xCu);
              }
            }

            v30 = MEMORY[0x1E695DF70];
            v31 = _Block_copy(v20);
            v32 = [v30 arrayWithObject:v31];

            [(NSMapTable *)self->_playerDequeueBlocks setObject:v32 forKey:v18];
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __121___UIFeedbackEngine__internal_playFeedbackData_atTime_feedback_effectiveFeedbackType_existingPlayer_withCompletionBlock___block_invoke_106;
            v33[3] = &unk_1E7107DC8;
            v34 = v18;
            v35 = self;
            v22 = v32;
            v36 = v22;
            [(_UIFeedbackEngine *)self _internal_dequeueReusableFeedbackPlayerWithCompletionBlock:v33];

            v26 = v34;
          }
        }
      }

      else
      {
        (*(v17 + 2))(v17, 0, 0, @"has no effective enabled types");
      }
    }

    else
    {
      (*(v17 + 2))(v17, 0, 0, @"engine not running or activating");
    }
  }

  else
  {
    (*(v17 + 2))(v17, 0, 0, @"not enabled");
  }
}

- (void)_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E70F37C0;
  v10[4] = self;
  v11 = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = v5;
  v9 = v4;
  dispatch_async(v6, v10);
}

- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  v3[2](v3, 0);
}

- (void)_internal_willPlayFeedback:(id)a3 atTime:(double)a4
{
  v6 = a3;
  [objc_opt_class() _internalQueue];

  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_933, @"EnableFeedbackVisualization") & 1) == 0 && byte_1ED48ADA4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___UIFeedbackEngine__internal_willPlayFeedback_atTime___block_invoke;
    block[3] = &unk_1E70F36D0;
    v9 = a4;
    block[4] = self;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_internal_willCancelFeedback:(id)a3
{
  v3 = a3;
  [objc_opt_class() _internalQueue];

  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_933, @"EnableFeedbackVisualization") & 1) == 0 && byte_1ED48ADA4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___UIFeedbackEngine__internal_willCancelFeedback___block_invoke;
    block[3] = &unk_1E70F3590;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setState:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  state = self->_state;
  self->_state = a3;
  if (state != a3)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v6 = *(__UILogGetCategoryCachedImpl("Feedback", &_setState____s_category_0) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = self;
        v9 = v6;
        v10 = [v7 stringWithFormat:@"<%s: %p>", object_getClassName(v8), v8];

        v11 = v10;
        v12 = stringForFeedbackEngineState(state);
        v13 = stringForFeedbackEngineState(a3);
        *buf = 138412802;
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "engine %@ state changed: %@ -> %@", buf, 0x20u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31___UIFeedbackEngine__setState___block_invoke;
    block[3] = &unk_1E70F6848;
    block[4] = self;
    block[5] = state;
    block[6] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (os_variant_has_internal_diagnostics())
    {
      if (_UIIsPrivateMainBundleNotIncludingTestHarness())
      {
        if (!state)
        {
          v15 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__sb_stuckInNonInactiveState selector:0 userInfo:0 repeats:60.0];
          springBoardTimer = self->_springBoardTimer;
          self->_springBoardTimer = v15;

          v14 = [MEMORY[0x1E695DFD0] mainRunLoop];
          [v14 addTimer:self->_springBoardTimer forMode:*MEMORY[0x1E695DA28]];
          goto LABEL_12;
        }

        if (!a3)
        {
          [(NSTimer *)self->_springBoardTimer invalidate];
          v14 = self->_springBoardTimer;
          self->_springBoardTimer = 0;
LABEL_12:
        }
      }
    }
  }
}

- (void)_sb_stuckInNonInactiveState
{
  if (self->_state)
  {
    v3 = dispatch_get_global_queue(17, 0);
    dispatch_async(v3, &__block_literal_global_113);
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v2 = *(__UILogGetCategoryCachedImpl("Feedback", &_sb_stuckInNonInactiveState___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Springboard ultimately returned to inactive state. Not reporting.", buf, 2u);
    }
  }
}

- (void)runWhenReady:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34___UIFeedbackEngine_runWhenReady___block_invoke;
  v6[3] = &unk_1E7107E48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_UIFeedbackEngine *)self _activate:1 andPerformWhenRunning:v6];
}

- (void)_applicationWillResignActive:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationWillResignActive____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = self;
      v8 = v5;
      v9 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "app will resign active for engine %@", buf, 0xCu);
    }
  }

  if (!self->_suspensionTimer)
  {
    v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__suspendEngineNow selector:0 userInfo:0 repeats:1.0];
    suspensionTimer = self->_suspensionTimer;
    self->_suspensionTimer = v10;
  }
}

- (void)_suspendEngineNow
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v3 = *(__UILogGetCategoryCachedImpl("Feedback", &_suspendEngineNow___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = self;
      v6 = v3;
      v7 = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(v5), v5];

      *buf = 138412290;
      v9 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "_suspendEngineNow for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:1];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationDidBecomeActive____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app did become active for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_applicationWillSuspend:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationWillSuspend____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app will suspend for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:1];
}

- (void)_applicationDidResume:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationDidResume____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app did resume for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_hostDidEnterBackground:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_hostDidEnterBackground____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = self;
      v8 = v5;
      v9 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(v7), v7];

      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "host did enter background for engine %@", buf, 0xCu);
    }
  }

  if (!self->_suspensionTimer)
  {
    v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__suspendEngineNow selector:0 userInfo:0 repeats:1.0];
    suspensionTimer = self->_suspensionTimer;
    self->_suspensionTimer = v10;
  }
}

- (void)_hostWillEnterForeground:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_hostWillEnterForeground____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "host will enter foreground for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_remoteViewControllerWillDisconnect:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_remoteViewControllerWillDisconnect____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = self;
      v7 = v4;
      v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "remote view controller will disconnect for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_internal_setupBackgroundTask
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if (![(_UIFeedbackEngine *)self _backgroundTaskIdentifier])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@ Shutdown", v5];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50___UIFeedbackEngine__internal_setupBackgroundTask__block_invoke;
    v13[3] = &unk_1E70F3590;
    v13[4] = self;
    -[_UIFeedbackEngine _setBackgroundTaskIdentifier:](self, "_setBackgroundTaskIdentifier:", [UIApp _beginBackgroundTaskWithName:v6 expirationHandler:v13]);
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_setupBackgroundTask___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [(_UIFeedbackEngine *)self _backgroundTaskIdentifier];
        v10 = MEMORY[0x1E696AEC0];
        v11 = self;
        v12 = [v10 stringWithFormat:@"<%s: %p>", object_getClassName(v11), v11];

        *buf = 134218242;
        v15 = v9;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "began background task with ID %ld for engine %@", buf, 0x16u);
      }
    }
  }
}

- (NSString)_stats_key
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end