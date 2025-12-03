@interface _UIFeedbackEngine
+ (BOOL)_supportsPlayingFeedback:(id)feedback;
+ (id)engineForFeedback:(id)feedback;
+ (id)sharedEngine;
- (NSString)_stats_key;
- (_UIFeedbackEngine)init;
- (id)_activationCountStatistics;
- (id)_activationDurationStatistics;
- (id)_outOfChannelsCountStatistics;
- (id)_prewarmCountStatistics;
- (id)_prewarmDurationStatistics;
- (id)description;
- (void)_activate:(BOOL)_activate andPerformWhenRunning:(id)running;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidResume:(id)resume;
- (void)_applicationWillResignActive:(id)active;
- (void)_applicationWillSuspend:(id)suspend;
- (void)_cooldown;
- (void)_deactivate;
- (void)_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block;
- (void)_hostDidEnterBackground:(id)background;
- (void)_hostWillEnterForeground:(id)foreground;
- (void)_internal_activate:(BOOL)_internal_activate andPerformWhenRunning:(id)running;
- (void)_internal_activateEngine;
- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion;
- (void)_internal_cooldown;
- (void)_internal_cooldownEngineIfPossible;
- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)completion;
- (void)_internal_deactivate;
- (void)_internal_deactivateEngineIfPossible;
- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block;
- (void)_internal_performAtState:(int64_t)state block:(id)block;
- (void)_internal_playFeedbackData:(id)data atTime:(double)time feedback:(id)feedback effectiveFeedbackType:(unint64_t)type existingPlayer:(id)player withCompletionBlock:(id)block;
- (void)_internal_prewarm:(BOOL)_internal_prewarm andPerformWhenPrewarmed:(id)prewarmed;
- (void)_internal_prewarmEngine;
- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)completion;
- (void)_internal_serviceBlocksForState:(int64_t)state withSuccess:(BOOL)success;
- (void)_internal_setSuspended:(BOOL)suspended;
- (void)_internal_setupBackgroundTask;
- (void)_internal_startWarmingFeedbacks:(id)feedbacks;
- (void)_internal_stopWarmingFeedbacks:(id)feedbacks;
- (void)_internal_teardownBackgroundTask;
- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)completion;
- (void)_internal_updateSuspension;
- (void)_internal_willCancelFeedback:(id)feedback;
- (void)_internal_willPlayFeedback:(id)feedback atTime:(double)time;
- (void)_playFeedback:(id)feedback atTime:(double)time withCompletionBlock:(id)block;
- (void)_prewarm:(BOOL)_prewarm andPerformWhenPrewarmed:(id)prewarmed;
- (void)_remoteViewControllerWillDisconnect:(id)disconnect;
- (void)_sb_stuckInNonInactiveState;
- (void)_setState:(int64_t)state;
- (void)_setSuspended:(BOOL)suspended;
- (void)_startWarmingFeedbacks:(id)feedbacks;
- (void)_stats_outOfChannels;
- (void)_stats_stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)_stopWarmingFeedbacks:(id)feedbacks;
- (void)_suspendEngineNow;
- (void)runWhenReady:(id)ready;
@end

@implementation _UIFeedbackEngine

- (id)_activationCountStatistics
{
  _statsSuffix = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineActivationCountWithSuffix:_statsSuffix];

  return v3;
}

- (id)_activationDurationStatistics
{
  _statsSuffix = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineActivationDurationWithSuffix:_statsSuffix];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if ((_UIApplicationIsExtension() & 1) != 0 || _UIApplicationMayVendViews())
  {
    [defaultCenter addObserver:v2 selector:sel__hostDidEnterBackground_ name:0x1EFBB47B0 object:0];
    [defaultCenter addObserver:v2 selector:sel__hostWillEnterForeground_ name:0x1EFBB47D0 object:0];
    v6 = sel__remoteViewControllerWillDisconnect_;
    v7 = @"_UIViewServiceRemoteViewControllerWillDisconnectNotification";
    v8 = defaultCenter;
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

    [defaultCenter addObserver:v2 selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
    [defaultCenter addObserver:v2 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:UIApp];
    [defaultCenter addObserver:v2 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedEventsOnlyNotification" object:UIApp];
    [defaultCenter addObserver:v2 selector:sel__applicationDidResume_ name:@"UIApplicationResumedNotification" object:UIApp];
    [defaultCenter addObserver:v2 selector:sel__applicationDidResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    v6 = sel__applicationDidBecomeActive_;
    v7 = @"UIApplicationDidBecomeActiveNotification";
    v10 = UIApp;
    v8 = defaultCenter;
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
  _state = [(_UIFeedbackEngine *)self _state];
  if (has_internal_diagnostics)
  {
    if (_state == 3)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Attempt to activate an activating engine (%@)", buf, 0xCu);
      }
    }
  }

  else if (_state == 3)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499E80) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
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
        selfCopy3 = self;
        v8 = v5;
        selfCopy3 = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy3), selfCopy3];

        *buf = 138412290;
        selfCopy2 = selfCopy3;
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

  _state = [(_UIFeedbackEngine *)self _state];
  if (_state <= 5)
  {
    self->_suspensionState = qword_18A67A008[_state];
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

  _backgroundTaskIdentifier = [(_UIFeedbackEngine *)self _backgroundTaskIdentifier];
  if (_backgroundTaskIdentifier)
  {
    v4 = _backgroundTaskIdentifier;
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_teardownBackgroundTask___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v8 = v5;
        selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        *buf = 134218242;
        v11 = v4;
        v12 = 2112;
        v13 = selfCopy;
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
  _state = [(_UIFeedbackEngine *)self _state];
  if (has_internal_diagnostics)
  {
    if (_state == 1)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Attempt to prewarm a prewarming engine (%@)", buf, 0xCu);
      }
    }
  }

  else if (_state == 1)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_internal_prewarmEngine___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
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
  _statsSuffix = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEnginePrewarmDurationWithSuffix:_statsSuffix];

  return v3;
}

- (id)_prewarmCountStatistics
{
  _statsSuffix = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEnginePrewarmCountWithSuffix:_statsSuffix];

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
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      prewarmCount = selfCopy->_prewarmCount;
      *buf = 138412802;
      v17 = selfCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFeedbackEngine.m" lineNumber:807 description:{@"ERROR: -[%@ %@] called more times than the feedback engine was pre-warmed", v14, v15}];

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
      selfCopy = self;
      v6 = v3;
      selfCopy = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v11 = selfCopy;
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
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___UIFeedbackEngine__cooldown__block_invoke;
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

- (id)_outOfChannelsCountStatistics
{
  _statsSuffix = [(_UIFeedbackEngine *)self _statsSuffix];
  v3 = [_UIStatistics feedbackEngineOutOfChannelsCountWithSuffix:_statsSuffix];

  return v3;
}

- (void)_stats_stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if (to == 2)
  {
    _prewarmCountStatistics = [(_UIFeedbackEngine *)self _prewarmCountStatistics];
    [_prewarmCountStatistics incrementValueBy:1];

    _prewarmDurationStatistics = [(_UIFeedbackEngine *)self _prewarmDurationStatistics];
  }

  else
  {
    if (to != 4)
    {
      goto LABEL_6;
    }

    _activationCountStatistics = [(_UIFeedbackEngine *)self _activationCountStatistics];
    [_activationCountStatistics incrementValueBy:1];

    _prewarmDurationStatistics = [(_UIFeedbackEngine *)self _activationDurationStatistics];
  }

  v9 = _prewarmDurationStatistics;
  [_prewarmDurationStatistics startTimingForObject:self];

LABEL_6:
  if (from == 2)
  {
    _prewarmDurationStatistics2 = [(_UIFeedbackEngine *)self _prewarmDurationStatistics];
  }

  else
  {
    if (from != 4)
    {
      return;
    }

    _prewarmDurationStatistics2 = [(_UIFeedbackEngine *)self _activationDurationStatistics];
  }

  v11 = _prewarmDurationStatistics2;
  [_prewarmDurationStatistics2 recordTimingForObject:self];
}

- (void)_stats_outOfChannels
{
  _outOfChannelsCountStatistics = [(_UIFeedbackEngine *)self _outOfChannelsCountStatistics];
  [_outOfChannelsCountStatistics incrementValueBy:1];
}

+ (id)sharedEngine
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFeedbackEngine.m" lineNumber:176 description:@"Should use one of the subclasses"];

  return 0;
}

+ (id)engineForFeedback:(id)feedback
{
  v16 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  if (qword_1ED499E60 != -1)
  {
    dispatch_once(&qword_1ED499E60, &__block_literal_global_213);
  }

  _individualFeedbacks = [feedbackCopy _individualFeedbacks];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = qword_1ED499E58;
  sharedEngine = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (sharedEngine)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != sharedEngine; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (_engineClassSupportsAllIndividualFeedbacks(v9, _individualFeedbacks))
        {
          sharedEngine = [v9 sharedEngine];
          goto LABEL_13;
        }
      }

      sharedEngine = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (sharedEngine)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return sharedEngine;
}

+ (BOOL)_supportsPlayingFeedback:(id)feedback
{
  _individualFeedbacks = [feedback _individualFeedbacks];
  LOBYTE(self) = _engineClassSupportsAllIndividualFeedbacks(self, _individualFeedbacks);

  return self;
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

  string = [(UIDescriptionBuilder *)v3 string];

  return string;
}

- (void)_setSuspended:(BOOL)suspended
{
  if (pthread_main_np() == 1)
  {
    [(NSTimer *)self->_suspensionTimer invalidate];
    suspensionTimer = self->_suspensionTimer;
    self->_suspensionTimer = 0;

    _internalQueue = [objc_opt_class() _internalQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35___UIFeedbackEngine__setSuspended___block_invoke;
    v11[3] = &unk_1E70F35E0;
    v11[4] = self;
    suspendedCopy = suspended;
    v7 = _internalQueue;
    if (!_internalQueue)
    {
      v7 = MEMORY[0x1E69E96A0];
      v8 = MEMORY[0x1E69E96A0];
    }

    v9 = _internalQueue;
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

- (void)_internal_setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v27 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  if (!suspendedCopy)
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
        selfCopy = self;
        v8 = v5;
        selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        *buf = 138412290;
        v22 = selfCopy;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "ignoring request to suspend due to background feedback entitlement for engine %@", buf, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v10 = 1;
LABEL_10:
  suspended = self->_suspended;
  self->_suspended = v10;
  _internal_isSuspended = [(_UIFeedbackEngine *)self _internal_isSuspended];
  if (suspended != _internal_isSuspended)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v13 = _internal_isSuspended;
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
        selfCopy2 = self;
        v19 = v14;
        selfCopy2 = [v17 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy2), selfCopy2];

        *buf = 138412802;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = selfCopy2;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "suspended changed from: %@ --> %@ for engine %@", buf, 0x20u);
      }
    }

    [(_UIFeedbackEngine *)self _internal_updateSuspension];
  }
}

- (void)_internal_performAtState:(int64_t)state block:(id)block
{
  aBlock = block;
  [objc_opt_class() _internalQueue];

  v6 = aBlock;
  if (aBlock)
  {
    completionBlocks = self->_completionBlocks;
    if (!completionBlocks)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_completionBlocks;
      self->_completionBlocks = dictionary;

      completionBlocks = self->_completionBlocks;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    array = [(NSMutableDictionary *)completionBlocks objectForKeyedSubscript:v10];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      v12 = self->_completionBlocks;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      [(NSMutableDictionary *)v12 setObject:array forKeyedSubscript:v13];
    }

    v14 = _Block_copy(aBlock);
    [array addObject:v14];

    v6 = aBlock;
  }
}

- (void)_internal_serviceBlocksForState:(int64_t)state withSuccess:(BOOL)success
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];
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

- (void)_activate:(BOOL)_activate andPerformWhenRunning:(id)running
{
  runningCopy = running;
  v7 = runningCopy;
  if (runningCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke;
    aBlock[3] = &unk_1E70F3608;
    v18 = runningCopy;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  _internalQueue = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIFeedbackEngine__activate_andPerformWhenRunning___block_invoke_3;
  v14[3] = &unk_1E70FD0C8;
  _activateCopy = _activate;
  v14[4] = self;
  v15 = v8;
  v10 = _internalQueue;
  if (!_internalQueue)
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = _internalQueue;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (void)_internal_activate:(BOOL)_internal_activate andPerformWhenRunning:(id)running
{
  _internal_activateCopy = _internal_activate;
  v24 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  [objc_opt_class() _internalQueue];

  if (_internal_activateCopy)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_activate_andPerformWhenRunning____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v10 = v7;
        selfCopy = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        v12 = selfCopy;
        *buf = 138412802;
        v19 = selfCopy;
        v20 = 2048;
        numberOfClients = [(_UIFeedbackEngine *)selfCopy numberOfClients];
        v22 = 2048;
        v23 = [(_UIFeedbackEngine *)selfCopy numberOfClients]+ 1;
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

  _state = [(_UIFeedbackEngine *)self _state];
  if (_state > 2)
  {
    if (_state == 3)
    {
      selfCopy3 = self;
      v15 = 4;
      v16 = runningCopy;
      goto LABEL_25;
    }

    if (_state != 4)
    {
      if (_state != 5)
      {
        goto LABEL_26;
      }

      if (![objc_opt_class() _supportsAbortingDeactivation] || !_internal_activateCopy)
      {
        goto LABEL_12;
      }

      [(_UIFeedbackEngine *)self _setState:4];
    }

LABEL_20:
    if (runningCopy)
    {
      (runningCopy[2])(runningCopy, 1);
    }

    goto LABEL_26;
  }

  if (_state)
  {
    if (_state != 1)
    {
      if (_state != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    [(_UIFeedbackEngine *)self _internal_performAtState:4 block:runningCopy];
    if (!_internal_activateCopy)
    {
      goto LABEL_26;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62___UIFeedbackEngine__internal_activate_andPerformWhenRunning___block_invoke;
    v17[3] = &unk_1E70F5AC0;
    v17[4] = self;
    v16 = v17;
    selfCopy3 = self;
    v15 = 2;
LABEL_25:
    [(_UIFeedbackEngine *)selfCopy3 _internal_performAtState:v15 block:v16];
    goto LABEL_26;
  }

LABEL_12:
  [(_UIFeedbackEngine *)self _internal_performAtState:4 block:runningCopy];
  if (_internal_activateCopy)
  {
    [(_UIFeedbackEngine *)self _internal_activateEngine];
  }

LABEL_26:
}

- (void)_deactivate
{
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___UIFeedbackEngine__deactivate__block_invoke;
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
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      v9 = selfCopy;
      *buf = 138412802;
      v15 = selfCopy;
      v16 = 2048;
      numberOfClients = [(_UIFeedbackEngine *)selfCopy numberOfClients];
      v18 = 2048;
      v19 = [(_UIFeedbackEngine *)selfCopy numberOfClients]- 1;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "deactivate engine %@, clientCount: %ld -> %ld", buf, 0x20u);
    }
  }

  if (![(_UIFeedbackEngine *)self numberOfClients])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFeedbackEngine.m" lineNumber:615 description:{@"ERROR: -[%@ %@] called more times than the feedback engine was activated", v12, v13}];
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
  selfCopy = self;
  selfCopy = [v3 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_deactivateEngineIfPossible___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138412802;
      v13 = selfCopy;
      v14 = 2048;
      numberOfClients = [(_UIFeedbackEngine *)selfCopy numberOfClients];
      v16 = 2048;
      _internal_isSuspended = [(_UIFeedbackEngine *)selfCopy _internal_isSuspended];
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_internal_deactivateEngineIfPossible %@, clientCount: %ld, suspended: %ld", buf, 0x20u);
    }
  }

  if ([(_UIFeedbackEngine *)selfCopy _state]== 3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___UIFeedbackEngine__internal_deactivateEngineIfPossible__block_invoke;
    v11[3] = &unk_1E70F5AC0;
    v11[4] = selfCopy;
    [(_UIFeedbackEngine *)selfCopy _internal_performAtState:4 block:v11];
  }

  else if (![(_UIFeedbackEngine *)selfCopy numberOfClients]|| [(_UIFeedbackEngine *)selfCopy _internal_isSuspended])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57___UIFeedbackEngine__internal_deactivateEngineIfPossible__block_invoke_2;
    v8[3] = &unk_1E70F3C60;
    v9 = selfCopy;
    v10 = selfCopy;
    [(_UIFeedbackEngine *)selfCopy _internal_teardownUnderlyingPlayerIfPossibleWithCompletion:v8];
  }
}

- (void)_internal_activateUnderlyingPlayerWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  completionCopy[2](completionCopy, 1);
}

- (void)_internal_teardownUnderlyingPlayerIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  completionCopy[2](completionCopy, 1);
}

- (void)_startWarmingFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  _internalQueue = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___UIFeedbackEngine__startWarmingFeedbacks___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = feedbacksCopy;
  v6 = _internalQueue;
  if (!_internalQueue)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = _internalQueue;
  v9 = feedbacksCopy;
  dispatch_async(v6, v10);
}

- (void)_internal_startWarmingFeedbacks:(id)feedbacks
{
  _internalQueue = [objc_opt_class() _internalQueue];
}

- (void)_stopWarmingFeedbacks:(id)feedbacks
{
  feedbacksCopy = feedbacks;
  _internalQueue = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___UIFeedbackEngine__stopWarmingFeedbacks___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = feedbacksCopy;
  v6 = _internalQueue;
  if (!_internalQueue)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = _internalQueue;
  v9 = feedbacksCopy;
  dispatch_async(v6, v10);
}

- (void)_internal_stopWarmingFeedbacks:(id)feedbacks
{
  _internalQueue = [objc_opt_class() _internalQueue];
}

- (void)_prewarm:(BOOL)_prewarm andPerformWhenPrewarmed:(id)prewarmed
{
  prewarmedCopy = prewarmed;
  v7 = prewarmedCopy;
  if (prewarmedCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke;
    aBlock[3] = &unk_1E70F3608;
    v18 = prewarmedCopy;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  _internalQueue = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___UIFeedbackEngine__prewarm_andPerformWhenPrewarmed___block_invoke_3;
  v14[3] = &unk_1E70FD0C8;
  _prewarmCopy = _prewarm;
  v14[4] = self;
  v15 = v8;
  v10 = _internalQueue;
  if (!_internalQueue)
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = _internalQueue;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (void)_internal_prewarm:(BOOL)_internal_prewarm andPerformWhenPrewarmed:(id)prewarmed
{
  _internal_prewarmCopy = _internal_prewarm;
  v22 = *MEMORY[0x1E69E9840];
  prewarmedCopy = prewarmed;
  [objc_opt_class() _internalQueue];

  if (_internal_prewarmCopy)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_prewarm_andPerformWhenPrewarmed____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v10 = v7;
        selfCopy = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        prewarmCount = selfCopy->_prewarmCount;
        *buf = 138412802;
        v17 = selfCopy;
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
    if (prewarmedCopy)
    {
      prewarmedCopy[2](prewarmedCopy, 1);
    }

    goto LABEL_24;
  }

  _state = [(_UIFeedbackEngine *)self _state];
  if (_state > 2)
  {
    if (_state == 3)
    {
      selfCopy3 = self;
      v15 = 4;
      goto LABEL_23;
    }

    if (_state != 5)
    {
      if (_state != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else if (_state)
  {
    if (_state != 1)
    {
      if (_state != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    selfCopy3 = self;
    v15 = 2;
LABEL_23:
    [(_UIFeedbackEngine *)selfCopy3 _internal_performAtState:v15 block:prewarmedCopy];
    goto LABEL_24;
  }

  [(_UIFeedbackEngine *)self _internal_performAtState:2 block:prewarmedCopy];
  if (_internal_prewarmCopy)
  {
    [(_UIFeedbackEngine *)self _internal_prewarmEngine];
  }

LABEL_24:
}

- (void)_internal_prewarmUnderlyingPlayerWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  completionCopy[2](completionCopy, 1);
}

- (void)_internal_cooldownUnderlyingPlayerIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _internalQueue];

  completionCopy[2](completionCopy, 1);
}

- (void)_playFeedback:(id)feedback atTime:(double)time withCompletionBlock:(id)block
{
  feedbackCopy = feedback;
  blockCopy = block;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  _effectiveEnabledFeedbackTypes = [feedbackCopy _effectiveEnabledFeedbackTypes];
  _player = [feedbackCopy _player];
  _internalQueue = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___UIFeedbackEngine__playFeedback_atTime_withCompletionBlock___block_invoke;
  block[3] = &unk_1E7107D78;
  block[4] = self;
  v22 = _effectiveFeedbackData;
  timeCopy = time;
  v27 = _effectiveEnabledFeedbackTypes;
  v23 = feedbackCopy;
  v24 = _player;
  v25 = blockCopy;
  v14 = _internalQueue;
  if (!_internalQueue)
  {
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v16 = _internalQueue;
  v17 = blockCopy;
  v18 = _player;
  v19 = feedbackCopy;
  v20 = _effectiveFeedbackData;
  dispatch_async(v14, block);
}

- (void)_internal_playFeedbackData:(id)data atTime:(double)time feedback:(id)feedback effectiveFeedbackType:(unint64_t)type existingPlayer:(id)player withCompletionBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  feedbackCopy = feedback;
  playerCopy = player;
  blockCopy = block;
  [objc_opt_class() _internalQueue];

  if ([(_UIFeedbackEngine *)self isEnabled])
  {
    if ([(_UIFeedbackEngine *)self _internal_isSuspended])
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, @"suspended");
    }

    else if ([(_UIFeedbackEngine *)self _state]== 4 || [(_UIFeedbackEngine *)self _state]== 3)
    {
      if (type)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __121___UIFeedbackEngine__internal_playFeedbackData_atTime_feedback_effectiveFeedbackType_existingPlayer_withCompletionBlock___block_invoke;
        aBlock[3] = &unk_1E7107DA0;
        v38 = dataCopy;
        v18 = feedbackCopy;
        v39 = v18;
        timeCopy = time;
        v40 = blockCopy;
        v19 = _Block_copy(aBlock);
        v20 = v19;
        if (playerCopy)
        {
          (*(v19 + 2))(v19, playerCopy);
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
            selfCopy = self;
            v22 = v32;
            v36 = v22;
            [(_UIFeedbackEngine *)self _internal_dequeueReusableFeedbackPlayerWithCompletionBlock:v33];

            v26 = v34;
          }
        }
      }

      else
      {
        (*(blockCopy + 2))(blockCopy, 0, 0, @"has no effective enabled types");
      }
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, @"engine not running or activating");
    }
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, @"not enabled");
  }
}

- (void)_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block
{
  blockCopy = block;
  _internalQueue = [objc_opt_class() _internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71___UIFeedbackEngine__dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E70F37C0;
  v10[4] = self;
  v11 = blockCopy;
  v6 = _internalQueue;
  if (!_internalQueue)
  {
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = _internalQueue;
  v9 = blockCopy;
  dispatch_async(v6, v10);
}

- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)block
{
  blockCopy = block;
  [objc_opt_class() _internalQueue];

  blockCopy[2](blockCopy, 0);
}

- (void)_internal_willPlayFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];

  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_933, @"EnableFeedbackVisualization") & 1) == 0 && byte_1ED48ADA4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___UIFeedbackEngine__internal_willPlayFeedback_atTime___block_invoke;
    block[3] = &unk_1E70F36D0;
    timeCopy = time;
    block[4] = self;
    v8 = feedbackCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_internal_willCancelFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [objc_opt_class() _internalQueue];

  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_933, @"EnableFeedbackVisualization") & 1) == 0 && byte_1ED48ADA4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___UIFeedbackEngine__internal_willCancelFeedback___block_invoke;
    block[3] = &unk_1E70F3590;
    v5 = feedbackCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setState:(int64_t)state
{
  v24 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _internalQueue];

  state = self->_state;
  self->_state = state;
  if (state != state)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v6 = *(__UILogGetCategoryCachedImpl("Feedback", &_setState____s_category_0) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v9 = v6;
        selfCopy = [v7 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        v11 = selfCopy;
        v12 = stringForFeedbackEngineState(state);
        v13 = stringForFeedbackEngineState(state);
        *buf = 138412802;
        v19 = selfCopy;
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
    block[6] = state;
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

          mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
          [mainRunLoop addTimer:self->_springBoardTimer forMode:*MEMORY[0x1E695DA28]];
          goto LABEL_12;
        }

        if (!state)
        {
          [(NSTimer *)self->_springBoardTimer invalidate];
          mainRunLoop = self->_springBoardTimer;
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

- (void)runWhenReady:(id)ready
{
  readyCopy = ready;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34___UIFeedbackEngine_runWhenReady___block_invoke;
  v6[3] = &unk_1E7107E48;
  v6[4] = self;
  v7 = readyCopy;
  v5 = readyCopy;
  [(_UIFeedbackEngine *)self _activate:1 andPerformWhenRunning:v6];
}

- (void)_applicationWillResignActive:(id)active
{
  v14 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationWillResignActive____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = v5;
      selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v13 = selfCopy;
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
      selfCopy = self;
      v6 = v3;
      selfCopy = [v4 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v9 = selfCopy;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "_suspendEngineNow for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:1];
}

- (void)_applicationDidBecomeActive:(id)active
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationDidBecomeActive____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v10 = selfCopy;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app did become active for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_applicationWillSuspend:(id)suspend
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationWillSuspend____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v10 = selfCopy;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app will suspend for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:1];
}

- (void)_applicationDidResume:(id)resume
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_applicationDidResume____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v10 = selfCopy;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "app did resume for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_hostDidEnterBackground:(id)background
{
  v14 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Feedback", &_hostDidEnterBackground____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = v5;
      selfCopy = [v6 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v13 = selfCopy;
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

- (void)_hostWillEnterForeground:(id)foreground
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_hostWillEnterForeground____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v10 = selfCopy;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "host will enter foreground for engine %@", buf, 0xCu);
    }
  }

  [(_UIFeedbackEngine *)self _setSuspended:0];
}

- (void)_remoteViewControllerWillDisconnect:(id)disconnect
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Feedback", &_remoteViewControllerWillDisconnect____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v7 = v4;
      selfCopy = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

      *buf = 138412290;
      v10 = selfCopy;
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
        _backgroundTaskIdentifier = [(_UIFeedbackEngine *)self _backgroundTaskIdentifier];
        v10 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"<%s: %p>", object_getClassName(selfCopy), selfCopy];

        *buf = 134218242;
        v15 = _backgroundTaskIdentifier;
        v16 = 2112;
        v17 = selfCopy;
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