@interface SASMyriadController
- (BOOL)_isTrialMotionBoostEnabled;
- (BOOL)_isTrialUnlockBoostEnabled;
- (BOOL)_isTrialWakeBoostEnabled;
- (BOOL)activateForRequest:(id)request withTimeout:(id)timeout visible:(BOOL)visible quiet:(BOOL)quiet;
- (SASMyriadController)initWithDelegate:(id)delegate;
- (unsigned)_calculateExpBoosts:(double)boosts eventTime:(double)time trialBoostSecondDegree:(id)degree trialBoostFirstDegree:(id)firstDegree trialBoostIntercept:(id)intercept;
- (void)_cacheFactors;
- (void)_configureMotionActivityManager;
- (void)_resetMTAlarmObserver;
- (void)_resetMTTimerObserver;
- (void)_scdaCheckForAttention:(id)attention withTimeout:(double)timeout;
- (void)_setFiringAlarmIfNeeded:(id)needed;
- (void)_setFiringTimerIfNeeded:(id)needed;
- (void)_setupTrialRefresh;
- (void)_startObservingMTAlarmNotifications;
- (void)_startObservingMTTimerNotifications;
- (void)_stopObservingMTAlarmNotifications;
- (void)_stopObservingMTTimerNotifications;
- (void)_updateRaiseToWakeTimeForTransition:(id)transition;
- (void)activateForInTaskRequest:(BOOL)request isVisible:(BOOL)visible;
- (void)alarmsChanged:(id)changed;
- (void)alarmsReset:(id)reset;
- (void)dealloc;
- (void)didChangeLockState:(unint64_t)state toState:(unint64_t)toState;
- (void)scdaShouldAbortAnotherDeviceBetter:(id)better;
- (void)scdaShouldContinue:(id)continue;
- (void)setCanceledByMyriad:(BOOL)myriad;
- (void)timersChanged:(id)changed;
- (void)timersReset:(id)reset;
@end

@implementation SASMyriadController

- (BOOL)_isTrialWakeBoostEnabled
{
  v2 = [(TRIClient *)self->_trialClient levelForFactor:@"WAKE_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v3 = v2;
  if (v2)
  {
    bOOLeanValue = [v2 BOOLeanValue];
  }

  else
  {
    bOOLeanValue = 0;
  }

  return bOOLeanValue;
}

- (SASMyriadController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v62.receiver = self;
  v62.super_class = SASMyriadController;
  v5 = [(SASMyriadController *)&v62 init];
  if (v5)
  {
    inited = objc_initWeak(&location, v5);
    *(v5 + 46) = 0;
    v7 = inited;
    [v5 _configureMotionActivityManager];

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF0] configurationForDefaultMainDisplayMonitor];
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __40__SASMyriadController_initWithDelegate___block_invoke;
    v59 = &unk_1E82F37F8;
    objc_copyWeak(&v60, &location);
    v9 = _Block_copy(&v56);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:{v9, v56, v57, v58, v59}];
    v10 = [MEMORY[0x1E699FAE8] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    v11 = *(v5 + 7);
    *(v5 + 7) = v10;

    v12 = objc_alloc_init(SASLockStateMonitor);
    v13 = *(v5 + 10);
    *(v5 + 10) = v12;

    [*(v5 + 10) setDelegate:v5];
    *(v5 + 40) = 0;
    v14 = [objc_alloc(MEMORY[0x1E69CE398]) initWithDelegate:v5];
    v15 = *(v5 + 4);
    *(v5 + 4) = v14;

    defaultObserver = [MEMORY[0x1E69D14E8] defaultObserver];
    [defaultObserver addListener:v5];

    v17 = dispatch_queue_attr_make_initially_inactive(0);
    v18 = dispatch_queue_create("com.siri-activation.myriad-work-queue", v17);
    v19 = *(v5 + 13);
    *(v5 + 13) = v18;

    dispatch_set_qos_class_floor(*(v5 + 13), QOS_CLASS_USER_INITIATED, 0);
    dispatch_activate(*(v5 + 13));
    if (MobileTimerLibraryCore())
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x2050000000;
      v20 = getMTTimerManagerClass_softClass;
      v71 = getMTTimerManagerClass_softClass;
      if (!getMTTimerManagerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v64 = 3221225472;
        v65 = __getMTTimerManagerClass_block_invoke;
        v66 = &unk_1E82F38F8;
        v67 = &v68;
        __getMTTimerManagerClass_block_invoke(buf);
        v20 = v69[3];
      }

      v21 = v20;
      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v20 = 0;
    }

    if (MobileTimerLibraryCore())
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x2050000000;
      v22 = getMTAlarmManagerClass_softClass;
      v71 = getMTAlarmManagerClass_softClass;
      if (!getMTAlarmManagerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v64 = 3221225472;
        v65 = __getMTAlarmManagerClass_block_invoke;
        v66 = &unk_1E82F38F8;
        v67 = &v68;
        __getMTAlarmManagerClass_block_invoke(buf);
        v22 = v69[3];
      }

      v23 = v22;
      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v22 = 0;
    }

    if (v20)
    {
      *(v5 + 160) = 0;
      v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v25 = *(v5 + 16);
      *(v5 + 16) = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = *(v5 + 18);
      *(v5 + 18) = v26;

      v28 = objc_alloc_init(v20);
      v29 = *(v5 + 14);
      *(v5 + 14) = v28;

      [v5 _startObservingMTTimerNotifications];
    }

    if (v22)
    {
      *(v5 + 161) = 0;
      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v31 = *(v5 + 17);
      *(v5 + 17) = v30;

      v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v33 = *(v5 + 19);
      *(v5 + 19) = v32;

      v34 = objc_alloc_init(v22);
      v35 = *(v5 + 15);
      *(v5 + 15) = v34;

      [v5 _startObservingMTAlarmNotifications];
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x2050000000;
    v36 = getAWAttentionAwarenessConfigurationClass_softClass;
    v71 = getAWAttentionAwarenessConfigurationClass_softClass;
    if (!getAWAttentionAwarenessConfigurationClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getAWAttentionAwarenessConfigurationClass_block_invoke;
      v66 = &unk_1E82F38F8;
      v67 = &v68;
      __getAWAttentionAwarenessConfigurationClass_block_invoke(buf);
      v36 = v69[3];
    }

    v37 = v36;
    _Block_object_dispose(&v68, 8);
    v38 = objc_alloc_init(v36);
    [v38 setIdentifier:@"com.apple.siri.SASMyriadController"];
    [v38 setEventMask:128];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2050000000;
    v39 = getAWAttentionAwarenessClientClass_softClass;
    v71 = getAWAttentionAwarenessClientClass_softClass;
    if (!getAWAttentionAwarenessClientClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getAWAttentionAwarenessClientClass_block_invoke;
      v66 = &unk_1E82F38F8;
      v67 = &v68;
      __getAWAttentionAwarenessClientClass_block_invoke(buf);
      v39 = v69[3];
    }

    v40 = v39;
    _Block_object_dispose(&v68, 8);
    v41 = objc_alloc_init(v39);
    v42 = *(v5 + 26);
    *(v5 + 26) = v41;

    [*(v5 + 26) setConfiguration:v38];
    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v44 = dispatch_queue_attr_make_with_qos_class(v43, QOS_CLASS_USER_INTERACTIVE, 0);

    v45 = dispatch_queue_create("com.apple.myriad_attention", v44);
    v46 = *(v5 + 25);
    *(v5 + 25) = v45;

    objc_storeWeak(v5 + 1, delegateCopy);
    v47 = [MEMORY[0x1E69DB518] clientWithIdentifier:294];
    v48 = *(v5 + 2);
    *(v5 + 2) = v47;

    v49 = MEMORY[0x1E698D0B0];
    v50 = os_signpost_id_generate(*MEMORY[0x1E698D0B0]);
    v51 = *v49;
    v52 = v51;
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8137000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v50, "SASMyriadController._cacheFactors", &unk_1C819A3E2, buf, 2u);
    }

    [v5 _cacheFactors];
    v53 = *v49;
    v54 = v53;
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8137000, v54, OS_SIGNPOST_INTERVAL_END, v50, "SASMyriadController._cacheFactors", &unk_1C819A3E2, buf, 2u);
    }

    [v5 _setupTrialRefresh];
    objc_destroyWeak(&v60);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __40__SASMyriadController_initWithDelegate___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if ([v8 backlightState] == 2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _updateRaiseToWakeTimeForTransition:v9];
    }

    else
    {
      v11 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "[SASMyriadController initWithDelegate:]_block_invoke";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE observerCalled. Screen is not activeOn. Ignoring transition=%@", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_cacheFactors
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"WAKE_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v4 = [(TRIClient *)self->_trialClient levelForFactor:@"MOTION_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v5 = [(TRIClient *)self->_trialClient levelForFactor:@"UNLOCK_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v6 = [(TRIClient *)self->_trialClient levelForFactor:@"WAKE_BOOST_SECOND_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v7 = [(TRIClient *)self->_trialClient levelForFactor:@"WAKE_BOOST_FIRST_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v8 = [(TRIClient *)self->_trialClient levelForFactor:@"WAKE_BOOST_INTERCEPT" withNamespaceName:@"MYRIAD_BOOSTS"];
  v9 = [(TRIClient *)self->_trialClient levelForFactor:@"MOTION_BOOST_SECOND_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v10 = [(TRIClient *)self->_trialClient levelForFactor:@"MOTION_BOOST_FIRST_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v11 = [(TRIClient *)self->_trialClient levelForFactor:@"MOTION_BOOST_INTERCEPT" withNamespaceName:@"MYRIAD_BOOSTS"];
  v12 = [(TRIClient *)self->_trialClient levelForFactor:@"UNLOCK_SECOND_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v13 = [(TRIClient *)self->_trialClient levelForFactor:@"UNLOCK_FIRST_DEGREE_COEFF" withNamespaceName:@"MYRIAD_BOOSTS"];
  v14 = [(TRIClient *)self->_trialClient levelForFactor:@"UNLOCK_BOOST_INTERCEPT" withNamespaceName:@"MYRIAD_BOOSTS"];
}

- (void)_setupTrialRefresh
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A8];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SASMyriadController _setupTrialRefresh]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_INFO, "%s Registering update handler", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __41__SASMyriadController__setupTrialRefresh__block_invoke;
  v13 = &unk_1E82F3820;
  objc_copyWeak(&v15, buf);
  selfCopy = self;
  v4 = _Block_copy(&v10);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("SASMyriadController", v5);

  trialRefreshQueue = self->_trialRefreshQueue;
  self->_trialRefreshQueue = v6;

  v8 = [(TRIClient *)self->_trialClient addUpdateHandlerForNamespaceName:@"MYRIAD_BOOSTS" queue:self->_trialRefreshQueue usingBlock:v4, v10, v11, v12, v13];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

void __41__SASMyriadController__setupTrialRefresh__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A8];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SASMyriadController _setupTrialRefresh]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_INFO, "%s Myriad Trial boosts updated: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] refresh];
    [*(a1 + 32) _cacheFactors];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_displayMonitor invalidate];
  [(SASMyriadController *)self _resetMTTimerObserver];
  [(SASMyriadController *)self _stopObservingMTTimerNotifications];
  [(SASMyriadController *)self _resetMTAlarmObserver];
  [(SASMyriadController *)self _stopObservingMTAlarmNotifications];
  [(CMMotionActivityManager *)self->_activityManager stopActivityUpdates];
  defaultObserver = [MEMORY[0x1E69D14E8] defaultObserver];
  [defaultObserver removeListener:self];

  v4.receiver = self;
  v4.super_class = SASMyriadController;
  [(SASMyriadController *)&v4 dealloc];
}

- (void)setCanceledByMyriad:(BOOL)myriad
{
  myriadCopy = myriad;
  v11 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASMyriadController setCanceledByMyriad:]";
    v9 = 1024;
    v10 = myriadCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #myriad setCanceledByMyriad: %d", &v7, 0x12u);
  }

  self->_canceledByMyriad = myriadCopy;
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)activateForRequest:(id)request withTimeout:(id)timeout visible:(BOOL)visible quiet:(BOOL)quiet
{
  visibleCopy = visible;
  v170 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  timeoutCopy = timeout;
  v147 = requestCopy;
  context = [requestCopy context];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    requestInfo = [context requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];
  }

  else
  {
    speechRequestOptions = 0;
  }

  v148 = speechRequestOptions;
  if ([speechRequestOptions isVoiceTrigger])
  {
    scdaContext = [speechRequestOptions scdaContext];
    v12 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SASMyriadController activateForRequest:scdaContext withTimeout:v12 visible:? quiet:?];
    }

    if (AFCDAFaceDetection())
    {
      objc_initWeak(location, self);
      myriadAttentionQueue = self->_myriadAttentionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke;
      block[3] = &unk_1E82F37D0;
      objc_copyWeak(&v164, location);
      scdaContext = scdaContext;
      v163 = scdaContext;
      dispatch_async(myriadAttentionQueue, block);
      v14 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(SASMyriadController *)v14 activateForRequest:v15 withTimeout:v16 visible:v17 quiet:v18, v19, v20, v21];
      }

      objc_destroyWeak(&v164);
      objc_destroyWeak(location);
    }
  }

  else
  {
    scdaContext = 0;
  }

  if (AFCDAFaceDetection() && AFAccessibilitySupportsAttentionAwareFeatures())
  {
    v22 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(SASMyriadController *)v22 activateForRequest:v23 withTimeout:v24 visible:v25 quiet:v26, v27, v28, v29];
    }

    v144 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_activityManagerLock);
    if (self->_activityManager)
    {
      v158 = 0x10000000000000;
      liftEndTime = self->_liftEndTime;
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v144 = SASMyriadUtilCurrentBoostForDecay(20, &v158, 10.0, liftEndTime, v32);

      v33 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315650;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 2048;
        *v167 = v158;
        *&v167[8] = 1024;
        *&v167[10] = v144;
        _os_log_impl(&dword_1C8137000, v33, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE lift time delta %f, adjusting by %d", location, 0x1Cu);
      }

      if ([(SASMyriadController *)self _isTrialFeatureFlagEnabled])
      {
        v34 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
          _os_log_impl(&dword_1C8137000, v34, OS_LOG_TYPE_DEFAULT, "%s #myriad Myriad Trial FF enabled", location, 0xCu);
        }

        if ([(SASMyriadController *)self _isTrialMotionBoostEnabled])
        {
          v35 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315138;
            *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
            _os_log_impl(&dword_1C8137000, v35, OS_LOG_TYPE_DEFAULT, "%s #myriad trialMotionBoostEnabled", location, 0xCu);
          }

          processInfo2 = [MEMORY[0x1E696AE30] processInfo];
          [processInfo2 systemUptime];
          v38 = v37;

          v144 = [(SASMyriadController *)self _calculateExpBoosts:@"MOTION_BOOST_SECOND_DEGREE_COEFF" eventTime:@"MOTION_BOOST_FIRST_DEGREE_COEFF" trialBoostSecondDegree:@"MOTION_BOOST_INTERCEPT" trialBoostFirstDegree:v38 trialBoostIntercept:self->_liftEndTime];
        }
      }
    }

    else
    {
      v144 = 0;
    }

    os_unfair_lock_unlock(&self->_activityManagerLock);
  }

  if (AFMyriadEmitSelfMetrics())
  {
    [(SCDACoordinator *)self->_scdaCoordinator instrumentationUpdateBoost:5 value:v144];
  }

  lockState = [(SASLockStateMonitor *)self->_lockStateMonitor lockState];
  if (AFCDAFaceDetection() && AFAccessibilitySupportsAttentionAwareFeatures())
  {
    v40 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [(SASMyriadController *)v40 activateForRequest:v41 withTimeout:v42 visible:v43 quiet:v44, v45, v46, v47];
    }

    goto LABEL_38;
  }

  if (lockState)
  {
LABEL_38:
    v48 = 0;
    goto LABEL_39;
  }

  v158 = 0x10000000000000;
  unlockTime = self->_unlockTime;
  processInfo3 = [MEMORY[0x1E696AE30] processInfo];
  [processInfo3 systemUptime];
  v48 = SASMyriadUtilCurrentBoostForDecay(4, &v158, 180.0, unlockTime, v100);

  v101 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315650;
    *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
    v166 = 2048;
    *v167 = v158;
    *&v167[8] = 1024;
    *&v167[10] = v48;
    _os_log_impl(&dword_1C8137000, v101, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE unlock time delta %f, adjusting by %d", location, 0x1Cu);
  }

  if ([(SASMyriadController *)self _isTrialFeatureFlagEnabled])
  {
    v102 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315138;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      _os_log_impl(&dword_1C8137000, v102, OS_LOG_TYPE_DEFAULT, "%s #myriad Myriad Trial FF enabled", location, 0xCu);
    }

    if ([(SASMyriadController *)self _isTrialUnlockBoostEnabled])
    {
      v103 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315138;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        _os_log_impl(&dword_1C8137000, v103, OS_LOG_TYPE_DEFAULT, "%s #myriad trialUnlockBoostEnabled]", location, 0xCu);
      }

      processInfo4 = [MEMORY[0x1E696AE30] processInfo];
      [processInfo4 systemUptime];
      v106 = v105;

      v48 = [(SASMyriadController *)self _calculateExpBoosts:@"UNLOCK_SECOND_DEGREE_COEFF" eventTime:@"UNLOCK_FIRST_DEGREE_COEFF" trialBoostSecondDegree:@"UNLOCK_BOOST_INTERCEPT" trialBoostFirstDegree:v106 trialBoostIntercept:self->_unlockTime];
    }
  }

LABEL_39:
  if (AFMyriadEmitSelfMetrics())
  {
    [(SCDACoordinator *)self->_scdaCoordinator instrumentationUpdateBoost:2 value:v48];
  }

  if (lockState)
  {
    isScreenOn = [(SASLockStateMonitor *)self->_lockStateMonitor isScreenOn];
  }

  else
  {
    isScreenOn = 1;
  }

  v50 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    isScreenOn2 = [(SASLockStateMonitor *)self->_lockStateMonitor isScreenOn];
    *location = 136315906;
    *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
    v166 = 1024;
    *v167 = lockState != 0;
    *&v167[4] = 1024;
    *&v167[6] = isScreenOn2;
    *&v167[10] = 1024;
    *&v167[12] = isScreenOn;
    _os_log_impl(&dword_1C8137000, v50, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE raise-to-wake locked=%d, screen=%d => shouldBoost:%d", location, 0x1Eu);
  }

  if (self->_displayMonitor != 0 && isScreenOn)
  {
    v158 = 0x10000000000000;
    raiseToWakeTime = self->_raiseToWakeTime;
    processInfo5 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo5 systemUptime];
    v55 = SASMyriadUtilCurrentBoostForDecay(85, &v158, 17.0, raiseToWakeTime, v54);

    v56 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315650;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      v166 = 2048;
      *v167 = v158;
      *&v167[8] = 1024;
      *&v167[10] = v55;
      _os_log_impl(&dword_1C8137000, v56, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE raise-to-wake time delta %f, adjusting by %d", location, 0x1Cu);
    }

    if ([(SASMyriadController *)self _isTrialFeatureFlagEnabled])
    {
      v57 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315138;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        _os_log_impl(&dword_1C8137000, v57, OS_LOG_TYPE_DEFAULT, "%s #myriad Trial FF enabled", location, 0xCu);
      }

      if ([(SASMyriadController *)self _isTrialWakeBoostEnabled])
      {
        v58 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
          _os_log_impl(&dword_1C8137000, v58, OS_LOG_TYPE_DEFAULT, "%s #myriad trialWakeBoostEnabled", location, 0xCu);
        }

        v59 = MEMORY[0x1E698D0B0];
        v60 = os_signpost_id_generate(*MEMORY[0x1E698D0B0]);
        v61 = *v59;
        v62 = v61;
        if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
        {
          *location = 0;
          _os_signpost_emit_with_name_impl(&dword_1C8137000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "SASMyriadController._calculateTrialWakeBoost", &unk_1C819A3E2, location, 2u);
        }

        processInfo6 = [MEMORY[0x1E696AE30] processInfo];
        [processInfo6 systemUptime];
        v65 = v64;

        v55 = [(SASMyriadController *)self _calculateExpBoosts:@"WAKE_BOOST_SECOND_DEGREE_COEFF" eventTime:@"WAKE_BOOST_FIRST_DEGREE_COEFF" trialBoostSecondDegree:@"WAKE_BOOST_INTERCEPT" trialBoostFirstDegree:v65 trialBoostIntercept:self->_raiseToWakeTime];
        v66 = *v59;
        v67 = v66;
        if (v60 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v66))
        {
          *location = 0;
          _os_signpost_emit_with_name_impl(&dword_1C8137000, v67, OS_SIGNPOST_INTERVAL_END, v60, "SASMyriadController._calculateTrialWakeBoost", &unk_1C819A3E2, location, 2u);
        }
      }
    }

    if (AFMyriadEmitSelfMetrics())
    {
      [(SCDACoordinator *)self->_scdaCoordinator instrumentationUpdateBoost:3 value:v55];
    }
  }

  else
  {
    LODWORD(v55) = 0;
  }

  if ([v147 isVoiceRequest] && (+[SASSystemState sharedSystemState](SASSystemState, "sharedSystemState"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "isConnectedToCarPlay"), v68, v69))
  {
    v70 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      v166 = 1024;
      *v167 = 15;
      _os_log_impl(&dword_1C8137000, v70, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE connected to carplay, adjusting by %d", location, 0x12u);
    }

    if (AFMyriadEmitSelfMetrics())
    {
      [(SCDACoordinator *)self->_scdaCoordinator instrumentationUpdateBoost:1 value:15];
    }

    v71 = 15;
  }

  else
  {
    v71 = 0;
  }

  v158 = 0;
  v159 = &v158;
  v160 = 0x2020000000;
  v161 = 0;
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  v157 = 0;
  objc_initWeak(&from, self);
  v72 = qos_class_self();
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_83;
  v151[3] = &unk_1E82F3848;
  objc_copyWeak(&v152, &from);
  v151[4] = &v158;
  v151[5] = &v154;
  v73 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v72, 0, v151);
  dispatch_sync(self->_myriadWorkQueue, v73);
  v74 = *(v159 + 24);
  v142 = *(v155 + 24);
  if (![speechRequestOptions isVoiceTrigger])
  {
    v93 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315138;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      _os_log_impl(&dword_1C8137000, v93, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Myriad direct trigger advertising needed", location, 0xCu);
    }

    [(SASMyriadController *)self setCanceledByMyriad:0];
    scdaCoordinator = self->_scdaCoordinator;
    if (!speechRequestOptions)
    {
      [(SCDACoordinator *)scdaCoordinator startAdvertisingFromDirectTrigger];
      goto LABEL_136;
    }

    scdaContext2 = [speechRequestOptions scdaContext];
    [(SCDACoordinator *)scdaCoordinator startAdvertisingFromDirectTriggerWithContext:scdaContext2];
    goto LABEL_135;
  }

  scdaContext3 = [speechRequestOptions scdaContext];

  if ([v147 isVoiceRequest] && (+[SASSystemState sharedSystemState](SASSystemState, "sharedSystemState"), v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "isConnectedToCarPlay"), v76, v77))
  {
    v78 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      [(SASMyriadController *)v78 activateForRequest:v79 withTimeout:v80 visible:v81 quiet:v82, v83, v84, v85];
    }

    v86 = MEMORY[0x1E69CE390];
    v149[0] = MEMORY[0x1E69E9820];
    v149[1] = 3221225472;
    v149[2] = __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_85;
    v149[3] = &unk_1E82F3870;
    v87 = scdaContext3;
    v150 = v87;
    v88 = [v86 newWithBuilder:v149];

    v89 = v55;
    v90 = v73;
    v91 = v48;
    v92 = v88;
  }

  else
  {
    v89 = v55;
    v90 = v73;
    v91 = v48;
    v92 = scdaContext3;
  }

  if (!visibleCopy)
  {
    v107 = v91 + v144 + v89 + v71;
    v108 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136316418;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      v166 = 1024;
      *v167 = v91;
      *&v167[4] = 1024;
      *&v167[6] = v144;
      *&v167[10] = 1024;
      *&v167[12] = v71;
      *&v167[16] = 1024;
      *v168 = v89;
      *&v168[4] = 1024;
      *v169 = v91 + v144 + v89 + v71;
      _os_log_impl(&dword_1C8137000, v108, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Myriad voice trigger advertising needed adjusted by ul=%d + lt=%d + cp=%d + rtw=%d = %d", location, 0x2Au);
    }

    scdaContext = v92;
    v73 = v90;
    [(SASMyriadController *)self setCanceledByMyriad:0];
    if (v107 >= 255)
    {
      LOBYTE(v107) = -1;
    }

    processInfo7 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo7 systemUptime];
    v111 = v110;
    [(NSDate *)self->_lastPlayingDate timeIntervalSinceNow];
    v113 = v112;

    mediaPlaybackState = self->_mediaPlaybackState;
    v115 = objc_alloc_init(MEMORY[0x1E69CE3A0]);
    v116 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v117 = v111 + v113;
    v118 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      *location = 136316162;
      *&location[4] = "getSCDAGoodnessScoreContext";
      v166 = 2048;
      *v167 = mediaPlaybackState;
      *&v167[8] = 2048;
      *&v167[10] = v117;
      *v168 = 1024;
      *&v168[2] = v74;
      *v169 = 1024;
      *&v169[2] = v142;
      _os_log_impl(&dword_1C8137000, v118, OS_LOG_TYPE_INFO, "%s #myriad getSCDAGoodnessScoreContext observed AFMediaPlaybackState %ld and interrupted time %f timer firing state %d and alarm firing state %d", location, 0x2Cu);
    }

    if ((mediaPlaybackState - 2) >= 3)
    {
      if (mediaPlaybackState == 1)
      {
        [v116 addObject:&unk_1F47D16E0];
      }
    }

    else
    {
      [v116 addObject:&unk_1F47D16F8];
      [v115 setMediaPlaybackInterruptedTime:v117];
    }

    if ((v142 | v74) == 1)
    {
      [v116 addObject:&unk_1F47D1710];
    }

    if ([v116 count])
    {
      [v115 setReasons:v116];
      v119 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        *location = 136315394;
        *&location[4] = "getSCDAGoodnessScoreContext";
        v166 = 2112;
        *v167 = v116;
        _os_log_impl(&dword_1C8137000, v119, OS_LOG_TYPE_INFO, "%s #myriad getSCDAGoodnessScoreContext reasons %@", location, 0x16u);
      }

      scdaContext2 = v115;
    }

    else
    {
      v120 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        *location = 136315138;
        *&location[4] = "getSCDAGoodnessScoreContext";
        _os_log_impl(&dword_1C8137000, v120, OS_LOG_TYPE_INFO, "%s #myriad getSCDAGoodnessScoreContext returning empty goodness context", location, 0xCu);
      }

      scdaContext2 = 0;
    }

    if (v107)
    {
      v121 = [MEMORY[0x1E696AD98] numberWithInt:v107];
      [scdaContext2 setAdjustedScoreOverride:v121];

      v122 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        adjustedScoreOverride = [scdaContext2 adjustedScoreOverride];
        *location = 136315394;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 2112;
        *v167 = adjustedScoreOverride;
        _os_log_impl(&dword_1C8137000, v122, OS_LOG_TYPE_DEFAULT, "%s #myriad adjustedScoreOverride %@", location, 0x16u);
      }
    }

    v124 = *MEMORY[0x1E698D0A0];
    v125 = os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT);
    if (scdaContext && scdaContext2)
    {
      if (v125)
      {
        *location = 136315650;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 2112;
        *v167 = scdaContext2;
        *&v167[8] = 2112;
        *&v167[10] = scdaContext;
        _os_log_impl(&dword_1C8137000, v124, OS_LOG_TYPE_DEFAULT, "%s #myriad goodnesscontext %@ scda context %@ ", location, 0x20u);
      }

      [(SCDACoordinator *)self->_scdaCoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:scdaContext2 withContext:scdaContext];
    }

    else if (scdaContext)
    {
      if (v125)
      {
        *location = 136315650;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 1024;
        *v167 = v107;
        *&v167[4] = 2112;
        *&v167[6] = scdaContext;
        _os_log_impl(&dword_1C8137000, v124, OS_LOG_TYPE_DEFAULT, "%s #myriad adjustedScore %d scda context %@ ", location, 0x1Cu);
      }

      [(SCDACoordinator *)self->_scdaCoordinator startAdvertisingFromVoiceTriggerAdjusted:v107 withContext:scdaContext];
    }

    else
    {
      if (v125)
      {
        *location = 136315394;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 1024;
        *v167 = v107;
        _os_log_impl(&dword_1C8137000, v124, OS_LOG_TYPE_DEFAULT, "%s #myriad adjustedScore %d", location, 0x12u);
      }

      [(SCDACoordinator *)self->_scdaCoordinator startAdvertisingFromVoiceTriggerAdjusted:v107];
    }

LABEL_135:

    goto LABEL_136;
  }

  v96 = *MEMORY[0x1E698D0A0];
  v73 = v90;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315138;
    *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
    _os_log_impl(&dword_1C8137000, v96, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Myriad voice trigger advertising while isVisible", location, 0xCu);
  }

  scdaContext = v92;
  [(SASMyriadController *)self setCanceledByMyriad:0];
  v97 = self->_scdaCoordinator;
  if (v92)
  {
    [(SCDACoordinator *)v97 startAdvertisingFromInTaskVoiceTriggerWithContext:v92];
  }

  else
  {
    [(SCDACoordinator *)v97 startAdvertisingFromInTaskVoiceTrigger];
    scdaContext = 0;
  }

LABEL_136:
  if (timeoutCopy)
  {
    v126 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      activationEvent = [v147 activationEvent];
      *location = 136315394;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      v166 = 2048;
      *v167 = activationEvent;
      _os_log_impl(&dword_1C8137000, v126, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Siri is delayed for Myriad decision, evt = %ld", location, 0x16u);
    }

    [timeoutCopy floatValue];
    v129 = dispatch_time(0, (v128 * 1000000.0));
    v130 = dispatch_semaphore_create(0);
    myriadFinishedSemaphore = self->_myriadFinishedSemaphore;
    self->_myriadFinishedSemaphore = v130;

    v132 = dispatch_semaphore_wait(self->_myriadFinishedSemaphore, v129);
    v133 = self->_myriadFinishedSemaphore;
    self->_myriadFinishedSemaphore = 0;

    if (v132)
    {
      v134 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315394;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v166 = 2048;
        *v167 = v132;
        _os_log_impl(&dword_1C8137000, v134, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE timed out waiting for Myriad decision, sem=%ld", location, 0x16u);
      }
    }

    canceledByMyriad = self->_canceledByMyriad;
    v136 = *MEMORY[0x1E698D0A0];
    v137 = os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT);
    if (canceledByMyriad)
    {
      if (v137)
      {
        *location = 136315138;
        *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
        v138 = "%s #myriad BTLE Canceled Myriad decision. Not activating Siri.";
LABEL_149:
        _os_log_impl(&dword_1C8137000, v136, OS_LOG_TYPE_DEFAULT, v138, location, 0xCu);
      }
    }

    else if (v137)
    {
      *location = 136315138;
      *&location[4] = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]";
      v138 = "%s #myriad BTLE Got Myriad decision. Activating Siri.";
      goto LABEL_149;
    }

    v139 = !canceledByMyriad;
    goto LABEL_151;
  }

  v139 = 1;
LABEL_151:

  objc_destroyWeak(&v152);
  objc_destroyWeak(&from);
  _Block_object_dispose(&v154, 8);
  _Block_object_dispose(&v158, 8);

  v140 = *MEMORY[0x1E69E9840];
  return v139;
}

void __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E698D0A0];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained[10] isScreenOn];
    v14 = *v2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_cold_2(v13, v14);
    }

    v15 = 0.75;
    if (v13)
    {
      v15 = 0.5;
    }

    [v12 _scdaCheckForAttention:*(a1 + 32) withTimeout:v15];
  }
}

void __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_83(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[160];
    *(*(*(a1 + 40) + 8) + 24) = WeakRetained[161];
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 160);
      v6 = *(v3 + 161);
      v7 = v3[16];
      v8 = v3[17];
      v9 = v3[18];
      v10 = v3[19];
      v12 = 136316674;
      v13 = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]_block_invoke";
      v14 = 1024;
      v15 = v5;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #myriad isTimerFiring = %d, firing timerID: %@, timer fired date: %@, isAlarmFiring = %d, firing alarmID: %@, alarm fired date: %@", &v12, 0x40u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_85(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x1E69CE3A8]) initWithOverrideOption:1 reason:@"CarPlay request"];
  [v6 setOverrideState:v3];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 perceptualAudioHash];
    [v6 setPerceptualAudioHash:v5];
  }
}

- (BOOL)_isTrialUnlockBoostEnabled
{
  v2 = [(TRIClient *)self->_trialClient levelForFactor:@"UNLOCK_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v3 = v2;
  if (v2)
  {
    bOOLeanValue = [v2 BOOLeanValue];
  }

  else
  {
    bOOLeanValue = 0;
  }

  return bOOLeanValue;
}

- (BOOL)_isTrialMotionBoostEnabled
{
  v2 = [(TRIClient *)self->_trialClient levelForFactor:@"MOTION_BOOST_TRIAL_ENABLE" withNamespaceName:@"MYRIAD_BOOSTS"];
  v3 = v2;
  if (v2)
  {
    bOOLeanValue = [v2 BOOLeanValue];
  }

  else
  {
    bOOLeanValue = 0;
  }

  return bOOLeanValue;
}

- (unsigned)_calculateExpBoosts:(double)boosts eventTime:(double)time trialBoostSecondDegree:(id)degree trialBoostFirstDegree:(id)firstDegree trialBoostIntercept:(id)intercept
{
  v50 = *MEMORY[0x1E69E9840];
  degreeCopy = degree;
  firstDegreeCopy = firstDegree;
  interceptCopy = intercept;
  v13 = [(TRIClient *)self->_trialClient levelForFactor:degreeCopy withNamespaceName:@"MYRIAD_BOOSTS"];
  v14 = [(TRIClient *)self->_trialClient levelForFactor:firstDegreeCopy withNamespaceName:@"MYRIAD_BOOSTS"];
  v15 = [(TRIClient *)self->_trialClient levelForFactor:interceptCopy withNamespaceName:@"MYRIAD_BOOSTS"];
  v16 = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 == 0)
  {
    v19 = *MEMORY[0x1E698D0A0];
    LOBYTE(v20) = 0;
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136315138;
      v37 = "[SASMyriadController _calculateExpBoosts:eventTime:trialBoostSecondDegree:trialBoostFirstDegree:trialBoostIntercept:]";
      _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #myriad error reading trial levels for trialBoostSecondDegree", &v36, 0xCu);
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    [v13 doubleValue];
    v22 = v21;
    [v14 doubleValue];
    v24 = v23;
    [v16 doubleValue];
    v26 = v25;
    v27 = MEMORY[0x1E698D0A0];
    v28 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136316674;
      v37 = "[SASMyriadController _calculateExpBoosts:eventTime:trialBoostSecondDegree:trialBoostFirstDegree:trialBoostIntercept:]";
      v38 = 2112;
      v39 = degreeCopy;
      v40 = 2048;
      v41 = v22;
      v42 = 2112;
      v43 = firstDegreeCopy;
      v44 = 2048;
      v45 = v24;
      v46 = 2112;
      v47 = interceptCopy;
      v48 = 2048;
      v49 = v26;
      _os_log_impl(&dword_1C8137000, v28, OS_LOG_TYPE_DEFAULT, "%s #myriad trial coefficients %@:%f, %@:%f, %@:%f", &v36, 0x48u);
    }

    v20 = SCDAGoodnessComputeExponentialBoost();
    v30 = *v27;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = MEMORY[0x1E696AD98];
      v32 = v30;
      v33 = [v31 numberWithUnsignedChar:v20];
      v36 = 136315394;
      v37 = "[SASMyriadController _calculateExpBoosts:eventTime:trialBoostSecondDegree:trialBoostFirstDegree:trialBoostIntercept:]";
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_1C8137000, v32, OS_LOG_TYPE_DEFAULT, "%s #myriad trial bump uint8_t %@", &v36, 0x16u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)activateForInTaskRequest:(BOOL)request isVisible:(BOOL)visible
{
  requestCopy = request;
  v16 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E698D0A0];
  v7 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (visible)
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[SASMyriadController activateForInTaskRequest:isVisible:]";
      v12 = 1024;
      v13 = requestCopy;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Myriad voice trigger advertising while is visible [isVoiceTrigger %d]", &v10, 0x12u);
    }

    if (!requestCopy)
    {
      currentCoordinator = [MEMORY[0x1E69CE398] currentCoordinator];
      [currentCoordinator startAdvertisingFromDirectTrigger];
    }
  }

  else if (v7)
  {
    v10 = 136315650;
    v11 = "[SASMyriadController activateForInTaskRequest:isVisible:]";
    v12 = 1024;
    v13 = requestCopy;
    v14 = 1024;
    v15 = 0;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE Myriad ignoring advertisement [isVoiceTrigger %d, isVisible %d]", &v10, 0x18u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateRaiseToWakeTimeForTransition:(id)transition
{
  v16 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SASMyriadController _updateRaiseToWakeTimeForTransition:]";
    v14 = 2112;
    v15 = transitionCopy;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE observerCalled transition=%@", &v12, 0x16u);
  }

  transitionReasons = [transitionCopy transitionReasons];
  if (([transitionReasons containsObject:*MEMORY[0x1E69D4350]] & 1) != 0 || (objc_msgSend(transitionReasons, "containsObject:", *MEMORY[0x1E69D4358]) & 1) != 0 || (objc_msgSend(transitionReasons, "containsObject:", *MEMORY[0x1E69D4360]) & 1) != 0 || (objc_msgSend(transitionReasons, "containsObject:", *MEMORY[0x1E69D4368]) & 1) != 0 || (objc_msgSend(transitionReasons, "containsObject:", *MEMORY[0x1E69D4370]) & 1) != 0 || objc_msgSend(transitionReasons, "containsObject:", *MEMORY[0x1E69D4378]))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    self->_raiseToWakeTime = v9;

    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SASMyriadController _updateRaiseToWakeTimeForTransition:]";
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #myriad BTLE wake gesture noted", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:(id)attention withTimeout:(double)timeout
{
  attentionCopy = attention;
  if (timeout == 0.0)
  {
    timeout = 0.5;
  }

  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [SASMyriadController _scdaCheckForAttention:v8 withTimeout:timeout];
  }

  dispatch_assert_queue_V2(self->_myriadAttentionQueue);
  attentionClient = self->_attentionClient;
  v24 = 0;
  v10 = [(AWAttentionAwarenessClient *)attentionClient resumeWithError:&v24];
  v11 = v24;
  if ((v10 & 1) == 0 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    [SASMyriadController _scdaCheckForAttention:withTimeout:];
  }

  v12 = self->_attentionClient;
  v22 = 0;
  v23 = 0;
  v13 = [(AWAttentionAwarenessClient *)v12 pollForAttentionWithTimeout:&v23 event:&v22 error:timeout];
  v14 = v23;
  v15 = v22;
  v16 = *v7;
  v17 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v17)
    {
      [(SASMyriadController *)v14 _scdaCheckForAttention:v16 withTimeout:v15];
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (v14)
    {
LABEL_11:
      [(SCDACoordinator *)self->_scdaCoordinator faceDetectedBoostWithContext:attentionCopy];
    }
  }

  else if (v17)
  {
    [(SASMyriadController *)v14 _scdaCheckForAttention:v16 withTimeout:v15];
  }

LABEL_14:
  v18 = self->_attentionClient;
  v21 = 0;
  v19 = [(AWAttentionAwarenessClient *)v18 suspendWithError:&v21];
  v20 = v21;
  if ((v19 & 1) == 0 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    [SASMyriadController _scdaCheckForAttention:withTimeout:];
  }
}

- (void)scdaShouldContinue:(id)continue
{
  v13 = *MEMORY[0x1E69E9840];
  continueCopy = continue;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASMyriadController scdaShouldContinue:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #myriad", &v11, 0xCu);
  }

  myriadFinishedSemaphore = self->_myriadFinishedSemaphore;
  if (myriadFinishedSemaphore)
  {
    dispatch_semaphore_signal(myriadFinishedSemaphore);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 scdaShouldContinue:self];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)scdaShouldAbortAnotherDeviceBetter:(id)better
{
  v13 = *MEMORY[0x1E69E9840];
  betterCopy = better;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASMyriadController scdaShouldAbortAnotherDeviceBetter:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #myriad", &v11, 0xCu);
  }

  self->_canceledByMyriad = 1;
  myriadFinishedSemaphore = self->_myriadFinishedSemaphore;
  if (myriadFinishedSemaphore)
  {
    dispatch_semaphore_signal(myriadFinishedSemaphore);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 scdaShouldAbort:self];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_resetMTTimerObserver
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SASMyriadController _resetMTTimerObserver]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_INFO, "%s #myriad", &v5, 0xCu);
  }

  self->_mobileClockObserver.isTimerFiring = 0;
  [(NSMutableDictionary *)self->_mobileClockObserver.lastTimerFiringDates removeAllObjects];
  [(NSMutableSet *)self->_mobileClockObserver.lastFiringTimerIDs removeAllObjects];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingMTTimerNotifications
{
  v16 = *MEMORY[0x1E69E9840];
  [(SASMyriadController *)self _stopObservingMTTimerNotifications];
  if (MobileTimerLibraryCore())
  {
    v3 = getMTTimerManagerTimersChanged();
  }

  else
  {
    v3 = 0;
  }

  if (MobileTimerLibraryCore())
  {
    v4 = getMTTimerManagerStateReset();
    v5 = v4;
    if (v3 && v4)
    {
      v6 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "[SASMyriadController _startObservingMTTimerNotifications]";
        v12 = 2112;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_INFO, "%s #myriad observing timer notifications: %@, %@", &v10, 0x20u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_timersChanged_ name:v3 object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_timersReset_ name:v5 object:0];
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingMTTimerNotifications
{
  v16 = *MEMORY[0x1E69E9840];
  if (MobileTimerLibraryCore())
  {
    v3 = getMTTimerManagerTimersChanged();
  }

  else
  {
    v3 = 0;
  }

  if (MobileTimerLibraryCore())
  {
    v4 = getMTTimerManagerStateReset();
    v5 = v4;
    if (v3 && v4)
    {
      v6 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "[SASMyriadController _stopObservingMTTimerNotifications]";
        v12 = 2112;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_INFO, "%s #myriad ignoring timer notifications %@, %@", &v10, 0x20u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:v3 object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:v5 object:0];
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_resetMTAlarmObserver
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SASMyriadController _resetMTAlarmObserver]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_INFO, "%s #myriad", &v5, 0xCu);
  }

  self->_mobileClockObserver.isAlarmFiring = 0;
  [(NSMutableDictionary *)self->_mobileClockObserver.lastAlarmFiringDates removeAllObjects];
  [(NSMutableSet *)self->_mobileClockObserver.lastFiringAlarmIDs removeAllObjects];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingMTAlarmNotifications
{
  v16 = *MEMORY[0x1E69E9840];
  [(SASMyriadController *)self _stopObservingMTAlarmNotifications];
  if (MobileTimerLibraryCore())
  {
    v3 = getMTAlarmManagerAlarmsChanged();
  }

  else
  {
    v3 = 0;
  }

  if (MobileTimerLibraryCore())
  {
    v4 = getMTAlarmManagerStateReset();
    v5 = v4;
    if (v3 && v4)
    {
      v6 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "[SASMyriadController _startObservingMTAlarmNotifications]";
        v12 = 2112;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_INFO, "%s #myriad observing alarm notifications: %@, %@", &v10, 0x20u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_alarmsChanged_ name:v3 object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_alarmsReset_ name:v5 object:0];
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingMTAlarmNotifications
{
  v16 = *MEMORY[0x1E69E9840];
  if (MobileTimerLibraryCore())
  {
    v3 = getMTAlarmManagerAlarmsChanged();
  }

  else
  {
    v3 = 0;
  }

  if (MobileTimerLibraryCore())
  {
    v4 = getMTAlarmManagerStateReset();
    v5 = v4;
    if (v3 && v4)
    {
      v6 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "[SASMyriadController _stopObservingMTAlarmNotifications]";
        v12 = 2112;
        v13 = v3;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_INFO, "%s #myriad ignoring alarm notifications %@, %@", &v10, 0x20u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:v3 object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:v5 object:0];
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setFiringTimerIfNeeded:(id)needed
{
  v46 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v4 = neededCopy;
  if (neededCopy && [neededCopy count])
  {
    v28 = v4;
    if (!MobileTimerLibraryCore())
    {
      goto LABEL_35;
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v5 = getMTMutableTimerClass_softClass;
    v38 = getMTMutableTimerClass_softClass;
    if (!getMTMutableTimerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTMutableTimerClass_block_invoke;
      v40 = &unk_1E82F38F8;
      v41 = &v35;
      __getMTMutableTimerClass_block_invoke(buf);
      v5 = v36[3];
    }

    v6 = v5;
    _Block_object_dispose(&v35, 8);
    if (!v5)
    {
LABEL_35:
      [(SASMyriadController *)self _resetMTTimerObserver];
      goto LABEL_36;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            firedDate = [v10 firedDate];
            timerID = [v10 timerID];
            isFiring = [v10 isFiring];
            v14 = *MEMORY[0x1E698D0A0];
            if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
            {
              v15 = v14;
              dismissedDate = [v10 dismissedDate];
              *buf = 136316418;
              *&buf[4] = "[SASMyriadController _setFiringTimerIfNeeded:]";
              *&buf[12] = 2112;
              *&buf[14] = v10;
              *&buf[22] = 2112;
              v40 = timerID;
              LOWORD(v41) = 1024;
              *(&v41 + 2) = isFiring;
              HIWORD(v41) = 2112;
              v42 = firedDate;
              v43 = 2112;
              v44 = dismissedDate;
              _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_INFO, "%s #myriad timer: %@, timerID: %@, isFiring: %d, fired date: %@ dismissed date: %@", buf, 0x3Au);
            }

            if (firedDate)
            {
              v17 = isFiring;
            }

            else
            {
              v17 = 0;
            }

            if (v17 != 1 || timerID == 0)
            {
              if ((isFiring & 1) == 0 && timerID && [(NSMutableSet *)self->_mobileClockObserver.lastFiringTimerIDs containsObject:timerID])
              {
                [(NSMutableSet *)self->_mobileClockObserver.lastFiringTimerIDs removeObject:timerID];
                [(NSMutableDictionary *)self->_mobileClockObserver.lastTimerFiringDates removeObjectForKey:timerID];
              }
            }

            else
            {
              self->_mobileClockObserver.isTimerFiring = 1;
              lastTimerFiringDates = self->_mobileClockObserver.lastTimerFiringDates;
              v20 = [firedDate copy];
              v21 = [(NSMutableDictionary *)timerID copy];
              [(NSMutableDictionary *)lastTimerFiringDates setObject:v20 forKey:v21];

              lastFiringTimerIDs = self->_mobileClockObserver.lastFiringTimerIDs;
              v23 = [(NSMutableDictionary *)timerID copy];
              [(NSMutableSet *)lastFiringTimerIDs addObject:v23];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v7);
    }

    if (![(NSMutableSet *)self->_mobileClockObserver.lastFiringTimerIDs count]|| (v4 = v28, ![(NSMutableDictionary *)self->_mobileClockObserver.lastTimerFiringDates count]))
    {
      [(SASMyriadController *)self _resetMTTimerObserver];
      v4 = v28;
    }
  }

  v24 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v25 = self->_mobileClockObserver.lastFiringTimerIDs;
    v26 = self->_mobileClockObserver.lastTimerFiringDates;
    *buf = 136315650;
    *&buf[4] = "[SASMyriadController _setFiringTimerIfNeeded:]";
    *&buf[12] = 2112;
    *&buf[14] = v25;
    *&buf[22] = 2112;
    v40 = v26;
    _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_INFO, "%s #myriad Firing timers: %@, last firing dates: %@", buf, 0x20u);
  }

LABEL_36:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)timersChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SASMyriadController timersChanged:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_INFO, "%s #myriad", &buf, 0xCu);
  }

  if (MobileTimerLibraryCore())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v6 = getMTTimerManagerTimersKeySymbolLoc_ptr;
    v22 = getMTTimerManagerTimersKeySymbolLoc_ptr;
    if (!getMTTimerManagerTimersKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __getMTTimerManagerTimersKeySymbolLoc_block_invoke;
      v25 = &unk_1E82F38F8;
      v26 = &v19;
      v7 = MobileTimerLibrary();
      v8 = dlsym(v7, "MTTimerManagerTimersKey");
      *(v26[1] + 24) = v8;
      getMTTimerManagerTimersKeySymbolLoc_ptr = *(v26[1] + 24);
      v6 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v6)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v9 = *v6;
    if (v9)
    {
      v10 = v9;
      userInfo = [changedCopy userInfo];
      v12 = [userInfo objectForKey:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        myriadWorkQueue = self->_myriadWorkQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __37__SASMyriadController_timersChanged___block_invoke;
        block[3] = &unk_1E82F37D0;
        objc_copyWeak(&v17, &location);
        v16 = v12;
        dispatch_async(myriadWorkQueue, block);

        objc_destroyWeak(&v17);
      }
    }
  }

  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

void __37__SASMyriadController_timersChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setFiringTimerIfNeeded:*(a1 + 32)];
}

- (void)timersReset:(id)reset
{
  objc_initWeak(&location, self);
  myriadWorkQueue = self->_myriadWorkQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SASMyriadController_timersReset___block_invoke;
  v5[3] = &unk_1E82F36D0;
  objc_copyWeak(&v6, &location);
  dispatch_async(myriadWorkQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __35__SASMyriadController_timersReset___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SASMyriadController timersReset:]_block_invoke";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_INFO, "%s #myriad", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetMTTimerObserver];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _startObservingMTTimerNotifications];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setFiringAlarmIfNeeded:(id)needed
{
  v51 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v4 = neededCopy;
  if (neededCopy && [neededCopy count])
  {
    v28 = v4;
    if (!MobileTimerLibraryCore())
    {
      goto LABEL_34;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v5 = getMTMutableAlarmClass_softClass;
    v39 = getMTMutableAlarmClass_softClass;
    if (!getMTMutableAlarmClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTMutableAlarmClass_block_invoke;
      v41 = &unk_1E82F38F8;
      v42 = &v36;
      __getMTMutableAlarmClass_block_invoke(buf);
      v5 = v37[3];
    }

    v6 = v5;
    _Block_object_dispose(&v36, 8);
    if (!v5)
    {
LABEL_34:
      [(SASMyriadController *)self _resetMTAlarmObserver];
      goto LABEL_35;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v50 count:16];
    if (v7)
    {
      v31 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            firedDate = [v9 firedDate];
            alarmID = [v9 alarmID];
            isFiring = [v9 isFiring];
            isSleepAlarm = [v9 isSleepAlarm];
            isSnoozed = [v9 isSnoozed];
            v15 = *MEMORY[0x1E698D0A0];
            if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
            {
              v16 = v15;
              dismissedDate = [v9 dismissedDate];
              *buf = 136316930;
              *&buf[4] = "[SASMyriadController _setFiringAlarmIfNeeded:]";
              *&buf[12] = 2112;
              *&buf[14] = v9;
              *&buf[22] = 2112;
              v41 = alarmID;
              LOWORD(v42) = 1024;
              *(&v42 + 2) = isSleepAlarm;
              HIWORD(v42) = 1024;
              v43 = isFiring;
              v44 = 1024;
              v45 = isSnoozed;
              v46 = 2112;
              v47 = firedDate;
              v48 = 2112;
              v49 = dismissedDate;
              _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_INFO, "%s #myriad alarm: %@, alarmID: %@, isSleepAlarm: %d, isFiring: %d, isSnoozed: %d fired date: %@, dismissed date: %@", buf, 0x46u);
            }

            if (isFiring)
            {
              if ((isSleepAlarm & 1) == 0 && alarmID && firedDate)
              {
                lastAlarmFiringDates = self->_mobileClockObserver.lastAlarmFiringDates;
                v19 = [firedDate copy];
                v20 = [(NSMutableDictionary *)alarmID copy];
                [(NSMutableDictionary *)lastAlarmFiringDates setObject:v19 forKey:v20];

                lastFiringAlarmIDs = self->_mobileClockObserver.lastFiringAlarmIDs;
                v22 = [(NSMutableDictionary *)alarmID copy];
                [(NSMutableSet *)lastFiringAlarmIDs addObject:v22];

                self->_mobileClockObserver.isAlarmFiring = 1;
              }
            }

            else
            {
              if (alarmID)
              {
                v23 = isSleepAlarm;
              }

              else
              {
                v23 = 1;
              }

              if ((v23 & 1) == 0 && [(NSMutableSet *)self->_mobileClockObserver.lastFiringAlarmIDs containsObject:alarmID])
              {
                [(NSMutableSet *)self->_mobileClockObserver.lastFiringAlarmIDs removeObject:alarmID];
                [(NSMutableDictionary *)self->_mobileClockObserver.lastAlarmFiringDates removeObjectForKey:alarmID];
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v50 count:16];
      }

      while (v7);
    }

    if (![(NSMutableSet *)self->_mobileClockObserver.lastFiringAlarmIDs count]|| (v4 = v28, ![(NSMutableDictionary *)self->_mobileClockObserver.lastAlarmFiringDates count]))
    {
      [(SASMyriadController *)self _resetMTAlarmObserver];
      v4 = v28;
    }
  }

  v24 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v25 = self->_mobileClockObserver.lastFiringAlarmIDs;
    v26 = self->_mobileClockObserver.lastAlarmFiringDates;
    *buf = 136315650;
    *&buf[4] = "[SASMyriadController _setFiringAlarmIfNeeded:]";
    *&buf[12] = 2112;
    *&buf[14] = v25;
    *&buf[22] = 2112;
    v41 = v26;
    _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_INFO, "%s #myriad Firing alarms: %@, last firing dates: %@", buf, 0x20u);
  }

LABEL_35:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)alarmsChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SASMyriadController alarmsChanged:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_INFO, "%s #myriad", &buf, 0xCu);
  }

  if (MobileTimerLibraryCore())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v6 = getMTAlarmManagerAlarmsKeySymbolLoc_ptr;
    v22 = getMTAlarmManagerAlarmsKeySymbolLoc_ptr;
    if (!getMTAlarmManagerAlarmsKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __getMTAlarmManagerAlarmsKeySymbolLoc_block_invoke;
      v25 = &unk_1E82F38F8;
      v26 = &v19;
      v7 = MobileTimerLibrary();
      v8 = dlsym(v7, "MTAlarmManagerAlarmsKey");
      *(v26[1] + 24) = v8;
      getMTAlarmManagerAlarmsKeySymbolLoc_ptr = *(v26[1] + 24);
      v6 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v6)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v9 = *v6;
    if (v9)
    {
      v10 = v9;
      userInfo = [changedCopy userInfo];
      v12 = [userInfo objectForKey:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        myriadWorkQueue = self->_myriadWorkQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __37__SASMyriadController_alarmsChanged___block_invoke;
        block[3] = &unk_1E82F37D0;
        objc_copyWeak(&v17, &location);
        v16 = v12;
        dispatch_async(myriadWorkQueue, block);

        objc_destroyWeak(&v17);
      }
    }
  }

  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

void __37__SASMyriadController_alarmsChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setFiringAlarmIfNeeded:*(a1 + 32)];
}

- (void)alarmsReset:(id)reset
{
  objc_initWeak(&location, self);
  myriadWorkQueue = self->_myriadWorkQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SASMyriadController_alarmsReset___block_invoke;
  v5[3] = &unk_1E82F36D0;
  objc_copyWeak(&v6, &location);
  dispatch_async(myriadWorkQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __35__SASMyriadController_alarmsReset___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SASMyriadController alarmsReset:]_block_invoke";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_INFO, "%s #myriad", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetMTAlarmObserver];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _startObservingMTAlarmNotifications];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)didChangeLockState:(unint64_t)state toState:(unint64_t)toState
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = (toState == 0) & state;
  v6 = (state == 0) & toState;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[SASMyriadController didChangeLockState:toState:]";
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_INFO, "%s #myriad screen lock -> unlock: %d, screen unlock -> lock: %d", buf, 0x18u);
  }

  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    self->_unlockTime = v9;

LABEL_6:
    objc_initWeak(buf, self);
    myriadWorkQueue = self->_myriadWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SASMyriadController_didChangeLockState_toState___block_invoke;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v13, buf);
    dispatch_async(myriadWorkQueue, block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

void __50__SASMyriadController_didChangeLockState_toState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetMTAlarmObserver];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _resetMTTimerObserver];
}

- (void)_configureMotionActivityManager
{
  self->_liftEndTime = -10.0;
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(21, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__SASMyriadController__configureMotionActivityManager__block_invoke;
  v3[3] = &unk_1E82F36D0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__SASMyriadController__configureMotionActivityManager__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69634C0] isActivityAvailable])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = MEMORY[0x1E698D0A0];
      v4 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = MEMORY[0x1E696AF00];
        v6 = v4;
        v7 = [v5 currentThread];
        *buf = 136315394;
        v18 = "[SASMyriadController _configureMotionActivityManager]_block_invoke";
        v19 = 2048;
        v20 = [v7 qualityOfService];
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_activityManagerLock about to lock with qos: %zd", buf, 0x16u);
      }

      os_unfair_lock_lock(WeakRetained + 46);
      v8 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[SASMyriadController _configureMotionActivityManager]_block_invoke";
        _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_activityManagerLock successfully locked", buf, 0xCu);
      }

      v9 = objc_alloc_init(MEMORY[0x1E69634C0]);
      v10 = *&WeakRetained[48]._os_unfair_lock_opaque;
      *&WeakRetained[48]._os_unfair_lock_opaque = v9;

      v11 = *&WeakRetained[48]._os_unfair_lock_opaque;
      v12 = [MEMORY[0x1E696ADC8] mainQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__SASMyriadController__configureMotionActivityManager__block_invoke_110;
      v15[3] = &unk_1E82F3898;
      objc_copyWeak(&v16, (a1 + 32));
      [v11 startActivityUpdatesToQueue:v12 withHandler:v15];

      os_unfair_lock_unlock(WeakRetained + 46);
      v13 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[SASMyriadController _configureMotionActivityManager]_block_invoke_2";
        _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_activityManagerLock unlocked", buf, 0xCu);
      }

      objc_destroyWeak(&v16);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __54__SASMyriadController__configureMotionActivityManager__block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      os_unfair_lock_lock(WeakRetained + 46);
      v6 = [v9 stationary];
      LOBYTE(v5[42]._os_unfair_lock_opaque) = v6;
      if (v6)
      {
        v7 = [MEMORY[0x1E696AE30] processInfo];
        [v7 systemUptime];
        *&v5[44]._os_unfair_lock_opaque = v8;
      }

      os_unfair_lock_unlock(v5 + 46);
    }

    v3 = v9;
  }
}

- (void)activateForRequest:(void *)a1 withTimeout:(NSObject *)a2 visible:quiet:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0();
  v7 = v4;
  _os_log_debug_impl(&dword_1C8137000, a2, OS_LOG_TYPE_DEBUG, "%s #myriad scdaContext: %@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)activateForRequest:(uint64_t)a3 withTimeout:(uint64_t)a4 visible:(uint64_t)a5 quiet:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1C8137000, a1, a3, "%s #myriad attention dispatched", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateForRequest:(uint64_t)a3 withTimeout:(uint64_t)a4 visible:(uint64_t)a5 quiet:(uint64_t)a6 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1C8137000, a1, a3, "%s #myriad motion bump is ignored due to awareness being on", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateForRequest:(uint64_t)a3 withTimeout:(uint64_t)a4 visible:(uint64_t)a5 quiet:(uint64_t)a6 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1C8137000, a1, a3, "%s #myriad unlock bump is ignored due to awareness being on", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateForRequest:(uint64_t)a3 withTimeout:(uint64_t)a4 visible:(uint64_t)a5 quiet:(uint64_t)a6 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1C8137000, a1, a3, "%s #myriad request from CarPlay", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1C8137000, a1, a3, "%s #myriad attention start", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__SASMyriadController_activateForRequest_withTimeout_visible_quiet___block_invoke_cold_2(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SASMyriadController activateForRequest:withTimeout:visible:quiet:]_block_invoke";
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_1C8137000, a2, OS_LOG_TYPE_DEBUG, "%s #myriad attention isScreenOn?: %d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:(os_log_t)log withTimeout:(double)a2 .cold.1(os_log_t log, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SASMyriadController _scdaCheckForAttention:withTimeout:]";
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1C8137000, log, OS_LOG_TYPE_DEBUG, "%s #myriad attention with timeout: %f", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:withTimeout:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  _os_log_error_impl(&dword_1C8137000, v1, OS_LOG_TYPE_ERROR, "%s #myriad attention failed with resumeWithError: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:(void *)a3 withTimeout:.cold.3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 debugDescription];
  v10[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v11 = a1;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEBUG, "%s #myriad attention timed out with event: %@, error: %@", v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:(void *)a3 withTimeout:.cold.4(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1 isMetadataValid];
  v7 = [a3 debugDescription];
  v11[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v12 = a1;
  v13 = 1024;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  _os_log_debug_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEBUG, "%s #myriad attention awareness received attention event: %@, isMetadataValid %d, error: %@", v11, 0x26u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_scdaCheckForAttention:withTimeout:.cold.5()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  _os_log_error_impl(&dword_1C8137000, v1, OS_LOG_TYPE_ERROR, "%s #myriad attention failed suspendWithError: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end