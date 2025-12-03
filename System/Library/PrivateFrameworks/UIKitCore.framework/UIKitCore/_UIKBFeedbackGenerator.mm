@interface _UIKBFeedbackGenerator
+ (uint64_t)_solariumKeyboardFeedbackEnabled;
+ (uint64_t)_usesCoreHapticsForAudioOnly;
- (BOOL)_isRingerSwitchOn;
- (_UIKBFeedbackGenerator)init;
- (double)eventParameter:(void *)parameter setting:(double)setting previousValue:(double)value timeSinceLastAction:(double)action;
- (uint64_t)_areKeyClicksEnabled;
- (uint64_t)_updateMode;
- (void)_deactivateWithCompletionBlock:(uint64_t)block;
- (void)_dictationDidBeginNotification:(id)notification;
- (void)_dictationDidEndNotification:(id)notification;
- (void)_effectiveVolumeDidChangeNotification:(id)notification;
- (void)_performOnMain:(void *)main;
- (void)_performOnQueue:(void *)queue;
- (void)_recreateEngineAndPlayersIfNecessaryOnQueueWithMode:(void *)mode reason:;
- (void)_recreateEngineAndPlayersOnQueueWithMode:(void *)mode reason:;
- (void)_releaseEngineAndPlayersOnQueue;
- (void)_resetIdleTimer;
- (void)_resetWithReason:(void *)reason;
- (void)_sendAnalyticsEvent;
- (void)_serverConnectionDiedNotification:(id)notification;
- (void)_setIsEngineRunning:(uint64_t)running;
- (void)_startEngineIfNecessaryOnQueueWithReason:(void *)reason completionBlock:;
- (void)_stopEngineDueToIdle;
- (void)_stopEngineForApplicationNotification:(id)notification;
- (void)_stopEngineIfNecessaryOnQueueAndReleaseResources:(void *)resources completionBlock:;
- (void)actionOccurred:(int64_t)occurred textLength:(int64_t)length atLocation:(CGPoint)location;
- (void)activateWithCompletionBlock:(id)block;
- (void)deactivate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIKBFeedbackGenerator

+ (uint64_t)_solariumKeyboardFeedbackEnabled
{
  objc_opt_self();
  if (qword_1ED49FDC8 != -1)
  {
    dispatch_once(&qword_1ED49FDC8, &__block_literal_global_50_1);
  }

  if (byte_1ED49FDB9 != 1)
  {
    return 0;
  }

  return _UISolariumEnabled();
}

- (_UIKBFeedbackGenerator)init
{
  v20[8] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UIKBFeedbackGenerator;
  v2 = [(_UIKBFeedbackGenerator *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.UIKit.UIKBFeedbackGenerator", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.preferences.sounds"];
    soundsDefaults = v2->_soundsDefaults;
    v2->_soundsDefaults = v6;

    [(NSUserDefaults *)v2->_soundsDefaults addObserver:v2 forKeyPath:@"keyboard-audio" options:1 context:&kKVOContext];
    v2->_ringerStateNotifyToken = -1;
    objc_initWeak(&location, v2);
    v8 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __30___UIKBFeedbackGenerator_init__block_invoke;
    handler[3] = &unk_1E7119990;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch("com.apple.springboard.ringerstate", &v2->_ringerStateNotifyToken, MEMORY[0x1E69E96A0], handler);

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__keyboardPreferencesDidUpdateNotification_ name:@"UIKeyboardPreferencesDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__dictationDidBeginNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__dictationDidEndNotification_ name:@"UIDictationControllerDictationDidFinish" object:0];
    if (_UIApplicationIsExtension())
    {
      [defaultCenter addObserver:v2 selector:sel__stopEngineForApplicationNotification_ name:0x1EFBB47B0 object:0];
      [defaultCenter addObserver:v2 selector:sel__stopEngineForApplicationNotification_ name:0x1EFBB47D0 object:0];
      v10 = 0;
      v11 = &_UIViewServiceRemoteViewControllerWillDisconnectNotificationName;
    }

    else
    {
      [defaultCenter addObserver:v2 selector:sel__stopEngineForApplicationNotification_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
      [defaultCenter addObserver:v2 selector:sel__stopEngineForApplicationNotification_ name:@"UIApplicationSuspendedNotification" object:UIApp];
      v10 = UIApp;
      v11 = UIApplicationSuspendedEventsOnlyNotification;
    }

    [defaultCenter addObserver:v2 selector:sel__stopEngineForApplicationNotification_ name:*v11 object:v10];
    [(_UIKBFeedbackGenerator *)v2 _updateMode];
    v19[0] = &unk_1EFE32260;
    v19[1] = &unk_1EFE32290;
    v20[0] = &unk_1EFE32278;
    v20[1] = &unk_1EFE322A8;
    v19[2] = &unk_1EFE322C0;
    v19[3] = &unk_1EFE322F0;
    v20[2] = &unk_1EFE322D8;
    v20[3] = &unk_1EFE322D8;
    v19[4] = &unk_1EFE32308;
    v19[5] = &unk_1EFE32320;
    v20[4] = &unk_1EFE322D8;
    v20[5] = &unk_1EFE322A8;
    v19[6] = &unk_1EFE32338;
    v19[7] = &unk_1EFE32350;
    v20[6] = &unk_1EFE32278;
    v20[7] = &unk_1EFE322A8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:8];
    systemSounds = v2->_systemSounds;
    v2->_systemSounds = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (uint64_t)_updateMode
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = +[UIDevice currentDevice];
  _feedbackSupportLevel = [v2 _feedbackSupportLevel];

  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v4 preferencesActions];
  visceral = [preferencesActions visceral];

  v7 = _feedbackSupportLevel != 2 || visceral == 0;
  v8 = !v7;
  isRingerSwitch = [(_UIKBFeedbackGenerator *)self _isRingerSwitchOn];
  _areKeyClicksEnabled = [(_UIKBFeedbackGenerator *)*(self + 16) _areKeyClicksEnabled];
  v11 = v8 ^ 1;
  if ((_areKeyClicksEnabled & isRingerSwitch & 1) != 0 || v11)
  {
    v13 = _areKeyClicksEnabled & isRingerSwitch ^ 1;
    v7 = (v11 | v13) == 0;
    v14 = 3;
    if (!v7)
    {
      v14 = 0;
    }

    if ((v8 | v13) == 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 2;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37___UIKBFeedbackGenerator__updateMode__block_invoke;
  v22[3] = &__block_descriptor_40_e32_v16__0___UIKBFeedbackGenerator_8l;
  v22[4] = v12;
  [(_UIKBFeedbackGenerator *)self _performOnQueue:v22];
  v15 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "unsupported";
    v17 = *(&off_1E711B610 + v12);
    if (_feedbackSupportLevel == 2)
    {
      v16 = "supported";
    }

    *buf = 138413570;
    selfCopy = self;
    if (visceral)
    {
      v18 = "enabled";
    }

    else
    {
      v18 = "disabled";
    }

    v26 = v16;
    v28 = v18;
    v19 = "on";
    v25 = 2080;
    v27 = 2080;
    if (!isRingerSwitch)
    {
      v19 = "off";
    }

    v29 = 2080;
    v30 = v19;
    if (_areKeyClicksEnabled)
    {
      v20 = "enabled";
    }

    else
    {
      v20 = "disabled";
    }

    v31 = 2080;
    v32 = v20;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "%@: Updating mode. Haptics: %s. Haptics: %s. Ringer: %s. Sound: %s. Mode: %@", buf, 0x3Eu);
  }

  *(self + 168) = v12;
  return v12;
}

- (BOOL)_isRingerSwitchOn
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(self + 24);
  if (v2 == -1)
  {
    v4 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 138412290;
      *&v5[4] = self;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@: Error, attempting to read ringer state with an invalid token.", v5, 0xCu);
    }

    return 0;
  }

  else
  {
    *v5 = 0;
    notify_get_state(v2, v5);
    return *v5 != 0;
  }
}

- (uint64_t)_areKeyClicksEnabled
{
  v1 = [self objectForKey:@"keyboard-audio"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (uint64_t)_usesCoreHapticsForAudioOnly
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1ED49FDC0 != -1)
  {
    dispatch_once(&qword_1ED49FDC0, &__block_literal_global_461);
  }

  if (_MergedGlobals_1242)
  {
    return 1;
  }

  return +[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled];
}

- (void)_releaseEngineAndPlayersOnQueue
{
  v7 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%@: Releasing engine and players.", &v5, 0xCu);
    }

    [(_UIKBFeedbackGenerator *)self _setIsEngineRunning:?];
    v3 = *(self + 80);
    *(self + 80) = 0;

    v4 = *(self + 88);
    *(self + 88) = 0;
  }
}

- (void)dealloc
{
  v36 = *MEMORY[0x1E69E9840];
  [(_UIKBFeedbackGenerator *)self _sendAnalyticsEvent];
  engine = self->_engine;
  if (*&self->_engine != 0)
  {
    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__159;
    v34 = __Block_byref_object_dispose__159;
    v35 = engine;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__159;
    v22 = __Block_byref_object_dispose__159;
    v23 = self->_players;
    v4 = self->_engine;
    self->_engine = 0;

    players = self->_players;
    self->_players = 0;

    v6 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(&v31 + 1) + 40);
      v8 = v19[5];
      *buf = 138412802;
      selfCopy = self;
      v27 = 2048;
      v28 = v7;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%@: Engine %p or players %p exist during dealloc, releasing them from our worker queue.", buf, 0x20u);
    }

    v9 = dispatch_time(0, 1000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___UIKBFeedbackGenerator_dealloc__block_invoke;
    block[3] = &unk_1E71188B0;
    block[4] = &v31;
    block[5] = &v18;
    dispatch_after(v9, queue, block);
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v31, 8);
  }

  v11 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v31) = 138412290;
    *(&v31 + 4) = self;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%@: Stopping engine: dealloc", &v31, 0xCu);
  }

  notify_cancel(self->_ringerStateNotifyToken);
  [(NSUserDefaults *)self->_soundsDefaults removeObserver:self forKeyPath:@"keyboard-audio" context:kKVOContext];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v24[0] = @"UIKeyboardPreferencesDidUpdateNotification";
  v24[1] = 0x1EFBB47B0;
  v24[2] = 0x1EFBB47D0;
  v24[3] = @"_UIViewServiceRemoteViewControllerWillDisconnectNotification";
  v24[4] = @"UIApplicationWillResignActiveNotification";
  v24[5] = @"UIApplicationSuspendedNotification";
  v24[6] = @"UIApplicationSuspendedEventsOnlyNotification";
  v24[7] = @"UIKeyboardDidBeginDictationNotification";
  v24[8] = @"UIDictationControllerDictationDidFinish";
  v13 = getAVSystemController_EffectiveVolumeDidChangeNotification();
  v24[9] = v13;
  v14 = getAVSystemController_ServerConnectionDiedNotification();
  v24[10] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:11];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v15 names:?];

  v16.receiver = self;
  v16.super_class = _UIKBFeedbackGenerator;
  [(_UIKBFeedbackGenerator *)&v16 dealloc];
}

- (void)_sendAnalyticsEvent
{
  if (self)
  {
    if (*(self + 32))
    {
      v2 = [MEMORY[0x1E695DF00] now];
      [v2 timeIntervalSinceDate:*(self + 32)];
      *(self + 40) = v3 + *(self + 40);

      v4 = *(self + 32);
      *(self + 32) = 0;
    }

    v5 = *(self + 48);
    if (v5)
    {
      [UIKBAnalyticsDispatcher hapticEventEngineDuration:v5 startCount:*(self + 56) actionCount:*(self + 40)];
      *(self + 40) = 0;
      *(self + 48) = 0;
      *(self + 56) = 0;
    }
  }
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36___UIKBFeedbackGenerator_deactivate__block_invoke;
  v3[3] = &unk_1E70F5A28;
  objc_copyWeak(&v4, &location);
  [(_UIKBFeedbackGenerator *)self _deactivateWithCompletionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kKVOContext == context)
  {
    if ([path isEqualToString:{@"keyboard-audio", object, change}])
    {

      [(_UIKBFeedbackGenerator *)self _resetWithReason:?];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIKBFeedbackGenerator;
    [(_UIKBFeedbackGenerator *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_resetWithReason:(void *)reason
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    isActive = [reason isActive];
    v5 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "no";
      *buf = 138412802;
      reasonCopy = reason;
      if (isActive)
      {
        v6 = "yes";
      }

      v13 = 2080;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@: Calling deactivate (was active: %s) for reason: %@", buf, 0x20u);
    }

    objc_initWeak(buf, reason);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43___UIKBFeedbackGenerator__resetWithReason___block_invoke;
    v7[3] = &unk_1E7108F18;
    objc_copyWeak(&v9, buf);
    v10 = isActive;
    v8 = v3;
    [(_UIKBFeedbackGenerator *)reason _deactivateWithCompletionBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)_performOnQueue:(void *)queue
{
  v3 = a2;
  if (queue)
  {
    objc_initWeak(&location, queue);
    v4 = queue[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42___UIKBFeedbackGenerator__performOnQueue___block_invoke;
    block[3] = &unk_1E71036E8;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_performOnMain:(void *)main
{
  v3 = a2;
  if (main)
  {
    if (pthread_main_np() == 1)
    {
      v3[2](v3, main);
    }

    else
    {
      objc_initWeak(&location, main);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41___UIKBFeedbackGenerator__performOnMain___block_invoke;
      block[3] = &unk_1E71036E8;
      objc_copyWeak(&v6, &location);
      v5 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_setIsEngineRunning:(uint64_t)running
{
  if (running)
  {
    dispatch_assert_queue_V2(*(running + 8));
    if (*(running + 160) != a2)
    {
      *(running + 160) = a2;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __46___UIKBFeedbackGenerator__setIsEngineRunning___block_invoke;
      v4[3] = &unk_1E711B450;
      v5 = a2;
      v4[4] = running;
      [(_UIKBFeedbackGenerator *)running _performOnMain:v4];
    }
  }
}

- (void)_deactivateWithCompletionBlock:(uint64_t)block
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (block)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke;
    aBlock[3] = &unk_1E70F0F78;
    v5 = v3;
    v17 = v5;
    v6 = _Block_copy(aBlock);
    v7 = *(block + 168);
    if (v7 == 1)
    {
      if (+[_UIKBFeedbackGenerator _usesCoreHapticsForAudioOnly])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke_2;
        v14[3] = &unk_1E711B508;
        v15 = v6;
        [(_UIKBFeedbackGenerator *)block _performOnQueue:v14];
        v8 = v15;
LABEL_9:

LABEL_14:
        goto LABEL_15;
      }

      v10 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        blockCopy2 = block;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%@: Cooling System Sounds.", buf, 0xCu);
      }

      v11 = +[UIDevice currentDevice];
      [v11 _unregisterForSystemSounds:block];

      *(block + 28) = 0;
    }

    else if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        blockCopy2 = block;
        v20 = 2080;
        v21 = "[_UIKBFeedbackGenerator _deactivateWithCompletionBlock:]";
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%@: Request engine to stop for: %s", buf, 0x16u);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke_406;
      v12[3] = &unk_1E711B508;
      v13 = v5;
      [(_UIKBFeedbackGenerator *)block _performOnQueue:v12];
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:block selector:sel__stopEngineDueToIdle object:0];
      v8 = v13;
      goto LABEL_9;
    }

    v6[2](v6);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_recreateEngineAndPlayersOnQueueWithMode:(void *)mode reason:
{
  v76 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  dispatch_assert_queue_V2(*(self + 8));
  v50 = *(self + 160);
  [(_UIKBFeedbackGenerator *)self _releaseEngineAndPlayersOnQueue];
  v5 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = modeCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@: Recreating engine with reason %@.", buf, 0x16u);
  }

  dispatch_assert_queue_V2(*(self + 8));
  if (*(self + 76) == 1)
  {
    v6 = _UIKBFeedbackLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    *&buf[4] = self;
    v7 = "%@: Feedback is disabled; skipping CoreHaptics engine and player creation.";
    goto LABEL_6;
  }

  if (*(self + 77) != 1 || (*(self + 78) & 1) != 0)
  {
    v69[0] = &unk_1EFE32260;
    v49 = getCHHapticPatternLibraryKeyKeyboardInputText();
    *buf = v49;
    v69[1] = &unk_1EFE32290;
    v8 = getCHHapticPatternLibraryKeyKeyboardInputSeparator();
    *&buf[8] = v8;
    v69[2] = &unk_1EFE322C0;
    v9 = getCHHapticPatternLibraryKeyKeyboardDeletion();
    *&buf[16] = v9;
    v69[3] = &unk_1EFE322F0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v10 = qword_1ED49FDE0;
    v62 = qword_1ED49FDE0;
    if (!qword_1ED49FDE0)
    {
      v52 = MEMORY[0x1E69E9820];
      v53 = 3221225472;
      v54 = __getCHHapticPatternLibraryKeyKeyboardDeletionRepeatSymbolLoc_block_invoke;
      v55 = &unk_1E70F2F20;
      selfCopy = &v59;
      v11 = CoreHapticsLibrary_1();
      *(v60 + 24) = dlsym(v11, "CHHapticPatternLibraryKeyKeyboardDeletionRepeat");
      qword_1ED49FDE0 = *(selfCopy[1] + 24);
      v10 = *(v60 + 24);
    }

    _Block_object_dispose(&v59, 8);
    if (v10)
    {
      v12 = *v10;
      v71 = v12;
      v69[4] = &unk_1EFE32308;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v13 = qword_1ED49FDE8;
      v62 = qword_1ED49FDE8;
      if (!qword_1ED49FDE8)
      {
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __getCHHapticPatternLibraryKeyKeyboardDeletionRapidSymbolLoc_block_invoke;
        v55 = &unk_1E70F2F20;
        selfCopy = &v59;
        v14 = CoreHapticsLibrary_1();
        *(v60 + 24) = dlsym(v14, "CHHapticPatternLibraryKeyKeyboardDeletionRapid");
        qword_1ED49FDE8 = *(selfCopy[1] + 24);
        v13 = *(v60 + 24);
      }

      _Block_object_dispose(&v59, 8);
      if (v13)
      {
        v15 = *v13;
        v72 = v15;
        v69[5] = &unk_1EFE32320;
        v16 = getCHHapticPatternLibraryKeyKeyboardOther();
        v73 = v16;
        v69[6] = &unk_1EFE32338;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v17 = qword_1ED49FDF0;
        v62 = qword_1ED49FDF0;
        if (!qword_1ED49FDF0)
        {
          v52 = MEMORY[0x1E69E9820];
          v53 = 3221225472;
          v54 = __getCHHapticPatternLibraryKeyKeyboardInputCandidateSymbolLoc_block_invoke;
          v55 = &unk_1E70F2F20;
          selfCopy = &v59;
          v18 = CoreHapticsLibrary_1();
          *(v60 + 24) = dlsym(v18, "CHHapticPatternLibraryKeyKeyboardInputCandidate");
          qword_1ED49FDF0 = *(selfCopy[1] + 24);
          v17 = *(v60 + 24);
        }

        _Block_object_dispose(&v59, 8);
        if (v17)
        {
          v74 = *v17;
          v69[7] = &unk_1EFE32350;
          v19 = v74;
          v20 = getCHHapticPatternLibraryKeyKeyboardOther();
          v75 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v69 count:8];

          if (+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled])
          {
            v6 = [v21 mutableCopy];
            v22 = getCHHapticPatternLibraryKeyKeyboardInputText();
            [v6 setObject:v22 forKeyedSubscript:&unk_1EFE32338];

            v23 = getCHHapticPatternLibraryKeyKeyboardInputText();
            [v6 setObject:v23 forKeyedSubscript:&unk_1EFE32368];
          }

          else
          {
            v6 = v21;
          }

          v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v6, "count")}];
          v52 = MEMORY[0x1E69E9820];
          v53 = 3221225472;
          v54 = __65___UIKBFeedbackGenerator__createEngineAndPlayersOnQueueWithMode___block_invoke;
          v55 = &unk_1E711B3D8;
          selfCopy = self;
          v58 = a2;
          v25 = v24;
          v57 = v25;
          [v6 enumerateKeysAndObjectsUsingBlock:&v52];
          objc_storeStrong((self + 88), v24);
          v26 = *(self + 64);
          *(self + 64) = 0;

          if (a2 != 3)
          {
            v27 = +[_UIKBFeedbackGenerator _usesCoreHapticsForAudioOnly]^ 1;
            if (a2 != 1)
            {
              LOBYTE(v27) = 1;
            }

            if (v27)
            {
              goto LABEL_31;
            }
          }

          v64 = 0;
          v65 = &v64;
          v66 = 0x2050000000;
          v28 = qword_1ED49FDF8;
          v67 = qword_1ED49FDF8;
          if (!qword_1ED49FDF8)
          {
            v59 = MEMORY[0x1E69E9820];
            v60 = 3221225472;
            v61 = __getAVSystemControllerClass_block_invoke_0;
            v62 = &unk_1E70F2F20;
            v63 = &v64;
            __getAVSystemControllerClass_block_invoke_0(&v59);
            v28 = v65[3];
          }

          v29 = v28;
          _Block_object_dispose(&v64, 8);
          sharedAVSystemController = [v28 sharedAVSystemController];
          v31 = *(self + 64);
          *(self + 64) = sharedAVSystemController;

          v32 = getAVSystemController_EffectiveVolumeDidChangeNotification();
          v68 = v32;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];

          v34 = *(self + 64);
          v64 = 0;
          v65 = &v64;
          v66 = 0x2020000000;
          v35 = qword_1ED49FE00;
          v67 = qword_1ED49FE00;
          if (!qword_1ED49FE00)
          {
            v59 = MEMORY[0x1E69E9820];
            v60 = 3221225472;
            v61 = __getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_block_invoke;
            v62 = &unk_1E70F2F20;
            v63 = &v64;
            v36 = MediaExperienceLibrary_0();
            v37 = dlsym(v36, "AVSystemController_SubscribeToNotificationsAttribute");
            *(v63[1] + 24) = v37;
            qword_1ED49FE00 = *(v63[1] + 24);
            v35 = v65[3];
          }

          _Block_object_dispose(&v64, 8);
          if (v35)
          {
            [v34 setAttribute:v33 forKey:*v35 error:0];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v39 = getAVSystemController_EffectiveVolumeDidChangeNotification();
            [defaultCenter addObserver:self selector:sel__effectiveVolumeDidChangeNotification_ name:v39 object:*(self + 64)];

            v40 = getAVSystemController_ServerConnectionDiedNotification();
            [defaultCenter addObserver:self selector:sel__serverConnectionDiedNotification_ name:v40 object:0];

            [*(self + 64) getVolume:self + 72 forCategory:@"Ringtone"];
LABEL_31:

            goto LABEL_33;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SubscribeToNotificationsAttribute(void)"];
          [currentHandler handleFailureInFunction:v48 file:@"_UIKBFeedbackGenerator.m" lineNumber:54 description:{@"%s", dlerror()}];
        }

        else
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardInputCandidate(void)"];
          [currentHandler2 handleFailureInFunction:v46 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:90 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardDeletionRapid(void)"];
        [currentHandler3 handleFailureInFunction:v44 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:88 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardDeletionRepeat(void)"];
      [currentHandler4 handleFailureInFunction:v42 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:87 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  v6 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = self;
    v7 = "%@: Audio-only mode; skipping CoreHaptics engine and player creation.";
LABEL_6:
    _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
  }

LABEL_33:

  if (v50)
  {
    [(_UIKBFeedbackGenerator *)self _startEngineIfNecessaryOnQueueWithReason:modeCopy completionBlock:0];
  }

  else
  {
    [(_UIKBFeedbackGenerator *)self _performOnMain:?];
  }
}

- (void)_recreateEngineAndPlayersIfNecessaryOnQueueWithMode:(void *)mode reason:
{
  modeCopy = mode;
  if (self && !*(self + 80))
  {
    v6 = modeCopy;
    [(_UIKBFeedbackGenerator *)self _recreateEngineAndPlayersOnQueueWithMode:a2 reason:modeCopy];
    modeCopy = v6;
  }
}

- (void)_startEngineIfNecessaryOnQueueWithReason:(void *)reason completionBlock:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  reasonCopy = reason;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (*(self + 160) == 1)
    {
      if (reasonCopy)
      {
        reasonCopy[2](reasonCopy, 1);
      }
    }

    else
    {
      v7 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%@: Requesting engine start for reason: %@", buf, 0x16u);
      }

      v8 = reasonCopy;
      dispatch_assert_queue_V2(*(self + 8));
      v9 = *(self + 80);
      if (v9)
      {
        v15 = 0;
        [v9 startAndReturnError:&v15];
        v10 = v15;
        v11 = _UIKBFeedbackLog();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v10;
            _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@: Error starting CHHapticEngine: %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%@: Engine started (or it was already running).", buf, 0xCu);
          }

          [(_UIKBFeedbackGenerator *)self _setIsEngineRunning:?];
        }

        v14 = *(self + 160);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __65___UIKBFeedbackGenerator__startEngineOnQueueWithCompletionBlock___block_invoke;
        v17 = &unk_1E711B4E0;
        v19 = v14;
        v18 = v8;
        [(_UIKBFeedbackGenerator *)self _performOnMain:buf];
      }

      else
      {
        v13 = _UIKBFeedbackLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = self;
          _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%@: Error: Cannot start engine because it does not exist.", buf, 0xCu);
        }

        if (v8)
        {
          v8[2](v8, 0);
        }
      }
    }
  }
}

- (void)_stopEngineIfNecessaryOnQueueAndReleaseResources:(void *)resources completionBlock:
{
  location[3] = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (*(self + 160))
    {
      objc_initWeak(location, self);
      v6 = *(self + 80);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke;
      v8[3] = &unk_1E711B530;
      objc_copyWeak(&v10, location);
      v9 = resourcesCopy;
      v11 = a2;
      [v6 stopWithCompletionHandler:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    else
    {
      v7 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%@: Engine is not running.", location, 0xCu);
      }

      if (a2)
      {
        [(_UIKBFeedbackGenerator *)self _releaseEngineAndPlayersOnQueue];
      }

      if (resourcesCopy)
      {
        resourcesCopy[2](resourcesCopy);
      }
    }
  }
}

- (void)_resetIdleTimer
{
  if (!self)
  {
    return;
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopEngineDueToIdle object:0];
  if (*(self + 168) == 1 && *(self + 78) != 1)
  {
    return;
  }

  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v2 valueForPreferenceKey:@"KeyboardFeedbackIdleTimeout"];

  if (v4)
  {
    [v4 doubleValue];
    if (v3 <= 0.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 5.0;
  }

  [self performSelector:sel__stopEngineDueToIdle withObject:0 afterDelay:v3];
LABEL_9:
}

- (void)_stopEngineDueToIdle
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%@: Requesting engine stop for idle.", &v4, 0xCu);
  }

  [(_UIKBFeedbackGenerator *)self _performOnQueue:?];
  if (self)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopEngineDueToIdle object:0];
  }
}

- (void)_dictationDidBeginNotification:(id)notification
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@: Dictation did begin.", &v5, 0xCu);
  }

  [(_UIKBFeedbackGenerator *)self _performOnQueue:?];
}

- (void)_dictationDidEndNotification:(id)notification
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@: Dictation did end.", &v5, 0xCu);
  }

  [(_UIKBFeedbackGenerator *)self _performOnQueue:?];
}

- (void)_stopEngineForApplicationNotification:(id)notification
{
  v11 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (self && (self->__mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = [notificationCopy name];
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = name;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@: Request engine stop for application notification: %@", &v7, 0x16u);
    }

    [(_UIKBFeedbackGenerator *)self _performOnQueue:?];
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopEngineDueToIdle object:0];
  }
}

- (void)_effectiveVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v6 = getAVSystemController_EffectiveVolumeNotificationParameter_CategorySymbolLoc_ptr;
  v22 = getAVSystemController_EffectiveVolumeNotificationParameter_CategorySymbolLoc_ptr;
  if (!getAVSystemController_EffectiveVolumeNotificationParameter_CategorySymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAVSystemController_EffectiveVolumeNotificationParameter_CategorySymbolLoc_block_invoke;
    v17 = &unk_1E70F2F20;
    v18 = &v19;
    v7 = MediaExperienceLibrary_0();
    v20[3] = dlsym(v7, "AVSystemController_EffectiveVolumeNotificationParameter_Category");
    getAVSystemController_EffectiveVolumeNotificationParameter_CategorySymbolLoc_ptr = *(v18[1] + 24);
    v6 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v6)
  {
    v8 = *v6;
    v9 = [userInfo objectForKeyedSubscript:v8];

    if ([v9 isEqualToString:@"Ringtone"])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64___UIKBFeedbackGenerator__effectiveVolumeDidChangeNotification___block_invoke;
      v12[3] = &unk_1E711B558;
      v13 = v9;
      [(_UIKBFeedbackGenerator *)self _performOnQueue:v12];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_EffectiveVolumeNotificationParameter_Category(void)"];
    [currentHandler handleFailureInFunction:v11 file:@"_UIKBFeedbackGenerator.m" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_serverConnectionDiedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = notificationCopy;
    _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%@: AVSystemController error notification: %@", &v6, 0x16u);
  }
}

- (void)activateWithCompletionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke;
  aBlock[3] = &unk_1E70F3608;
  v5 = blockCopy;
  v23 = v5;
  v6 = _Block_copy(aBlock);
  v7 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIKBFeedbackGenerator activateWithCompletionBlock:]"];
    *buf = 138412546;
    selfCopy5 = self;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  if (!self->_isActive)
  {
    mode = self->__mode;
    if (mode)
    {
      if ((_UIApplicationIsExtension() & 1) != 0 || (_UIApplicationMayVendViews() & 1) != 0 || ![UIApp isSuspended])
      {
        if (mode == 1)
        {
          if (!+[_UIKBFeedbackGenerator _usesCoreHapticsForAudioOnly])
          {
            v14 = _UIKBFeedbackLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy5 = self;
              _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%@: Preheating System Sounds.", buf, 0xCu);
            }

            v15 = +[UIDevice currentDevice];
            [v15 _registerForSystemSounds:self];

            self->_isActive = 1;
            goto LABEL_7;
          }

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_405;
          v19[3] = &unk_1E711B580;
          v21 = 1;
          v19[4] = self;
          v20 = v6;
          [(_UIKBFeedbackGenerator *)self _performOnQueue:v19];
          v13 = v20;
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_4;
          v16[3] = &unk_1E711B5A8;
          v18 = mode;
          v17 = v6;
          [(_UIKBFeedbackGenerator *)self _performOnQueue:v16];
          v13 = v17;
        }

        goto LABEL_24;
      }

      v11 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        v12 = "%@: Cannot activate engine while suspended.";
LABEL_19:
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else
    {
      v11 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        v12 = "%@: Nothing to activate. Keyboard feedback is disabled.";
        goto LABEL_19;
      }
    }

    (*(v6 + 2))(v6, 0);
    goto LABEL_24;
  }

  v9 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy5 = self;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%@: Skipping activation. Already activated.", buf, 0xCu);
  }

LABEL_7:
  (*(v6 + 2))(v6, 1);
LABEL_24:
}

- (void)actionOccurred:(int64_t)occurred textLength:(int64_t)length atLocation:(CGPoint)location
{
  v13 = *MEMORY[0x1E69E9840];
  if (self && self->__mode)
  {
    self->_textLength = length;
    if (![(_UIKBFeedbackGenerator *)self isActive:location.x])
    {
      v7 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v11 = 2080;
        v12 = "[_UIKBFeedbackGenerator actionOccurred:textLength:atLocation:]";
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%@: Activating for %s", buf, 0x16u);
      }

      [(_UIKBFeedbackGenerator *)self activateWithCompletionBlock:0];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63___UIKBFeedbackGenerator_actionOccurred_textLength_atLocation___block_invoke;
    v8[3] = &__block_descriptor_40_e32_v16__0___UIKBFeedbackGenerator_8l;
    v8[4] = occurred;
    [(_UIKBFeedbackGenerator *)self _performOnQueue:v8];
    [(_UIKBFeedbackGenerator *)self _resetIdleTimer];
  }
}

- (double)eventParameter:(void *)parameter setting:(double)setting previousValue:(double)value timeSinceLastAction:(double)action
{
  parameterCopy = parameter;
  [parameterCopy min];
  v8 = v7;
  [parameterCopy intervalWeight];
  v10 = v9;
  [parameterCopy max];
  v12 = v11;
  [parameterCopy min];
  v14 = v13;
  [parameterCopy decayInterval];
  v15 = 0.0;
  if (v16 >= action)
  {
    [parameterCopy decayInterval];
    v15 = v17 - action;
  }

  [parameterCopy randomInPercentage];
  v19 = v18;
  [parameterCopy randomInPercentage];
  v21 = v20;
  v22 = arc4random();
  v23 = (v8 + 0.0 + v10 * setting * (v12 - v14) + v15 * value) * ((v21 * (v22 / 4294967300.0) - v19 * (1.0 - v22 / 4294967300.0)) / 100.0 + 1.0);

  return v23;
}

@end