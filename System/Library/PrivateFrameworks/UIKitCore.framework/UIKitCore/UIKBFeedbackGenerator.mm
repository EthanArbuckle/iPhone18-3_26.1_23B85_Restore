@interface UIKBFeedbackGenerator
@end

@implementation UIKBFeedbackGenerator

uint64_t __58___UIKBFeedbackGenerator__solariumKeyboardFeedbackEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49FDB9 = result;
  return result;
}

void __37___UIKBFeedbackGenerator__updateMode__block_invoke(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  a2[76] = v2 == 0;
  a2[77] = v2 == 1;
  v3 = a2;
  v3[78] = +[_UIKBFeedbackGenerator _usesCoreHapticsForAudioOnly];
}

uint64_t __61___UIKBFeedbackGenerator__keyboardCoreHapticAudioOnlyEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_1242 = result;
  return result;
}

void __30___UIKBFeedbackGenerator_init__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    isRingerSwitch = [(_UIKBFeedbackGenerator *)WeakRetained _isRingerSwitchOn];
    v4 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "off";
      if (isRingerSwitch)
      {
        v5 = "on";
      }

      *buf = 138412546;
      v10 = v8;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@: Ringer switch changed. Ringer is now %s.", buf, 0x16u);
    }

    v6 = [(_UIKBFeedbackGenerator *)v8[2] _areKeyClicksEnabled];
    v2 = v8;
    if (v6)
    {
      v7 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v8;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%@: Resetting the generator. Key clicks are enabled and the ringer switch changed.", buf, 0xCu);
      }

      [(_UIKBFeedbackGenerator *)v8 _resetWithReason:?];
      v2 = v8;
    }
  }
}

void __33___UIKBFeedbackGenerator_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _UIKBFeedbackLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v9 = 134218240;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Worker queue now setting engine %p and players %p to nil.", &v9, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __42___UIKBFeedbackGenerator__performOnQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __41___UIKBFeedbackGenerator__performOnMain___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __65___UIKBFeedbackGenerator__createEngineAndPlayersOnQueueWithMode___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v49 = 0;
  v7 = a3;
  v8 = objc_opt_self();
  LODWORD(v53) = 1459208360;
  v52 = xmmword_18A680DB8;
  if (!MGIsDeviceOfType())
  {
    goto LABEL_5;
  }

  v9 = getCHHapticPatternLibraryKeyKeyboardInputText();
  v10 = v9 == v7;

  if (v10)
  {
    v16 = &unk_1EFE34680;
  }

  else
  {
    v11 = getCHHapticPatternLibraryKeyKeyboardDeletion();
    v12 = v11 == v7;

    if (v12)
    {
      v16 = &unk_1EFE34810;
    }

    else
    {
      v13 = getCHHapticPatternLibraryKeyKeyboardInputSeparator();
      v14 = v13 == v7;

      if (!v14)
      {
LABEL_5:
        v15 = 0;
        goto LABEL_13;
      }

      v16 = &unk_1EFE349A0;
    }
  }

  v15 = [objc_alloc(getCHHapticPatternClass_0()) initWithDictionary:v16 error:&v49];
  if (v49)
  {
    v17 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      _os_log_error_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%@: Error creating CHHapticPattern from inline definition: %@", buf, 0x16u);
    }
  }

LABEL_13:

  v18 = v49;
  if (v18)
  {
    v19 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "%@: Error overriding CHHapticPattern: %@", buf, 0x16u);
    }
  }

  else if (v15)
  {
    goto LABEL_22;
  }

  v48 = v18;
  v15 = [getCHHapticPatternClass_0() patternForKey:v7 error:&v48];
  v20 = v48;

  if (v20)
  {
    v21 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "%@: Error creating CHHapticPattern: %@", buf, 0x16u);
    }

    goto LABEL_47;
  }

LABEL_22:
  v22 = *(a1 + 32);
  v23 = *(v22 + 80);
  if (v23)
  {
    goto LABEL_41;
  }

  v24 = [v15 configurationDictionary];
  v25 = *(a1 + 48);
  v26 = v24;
  dispatch_assert_queue_V2(*(v22 + 8));
  if (*(v22 + 76) == 1)
  {
    v27 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "[_UIKBFeedbackGenerator _createEngineOnQueueWithOptions:mode:]";
      _os_log_error_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "%@: %s called when feedback is disabled.", buf, 0x16u);
    }
  }

  else
  {
    *&v52 = 0;
    *(&v52 + 1) = &v52;
    v53 = 0x2050000000;
    v28 = getCHHapticEngineClass_softClass_0;
    v54 = getCHHapticEngineClass_softClass_0;
    if (!getCHHapticEngineClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCHHapticEngineClass_block_invoke_1;
      v58 = &unk_1E70F2F20;
      v59 = &v52;
      __getCHHapticEngineClass_block_invoke_1(buf);
      v28 = *(*(&v52 + 1) + 24);
    }

    v29 = v28;
    _Block_object_dispose(&v52, 8);
    v30 = [v28 alloc];
    v51 = 0;
    v31 = [v30 initWithAudioSession:0 sessionIsShared:0 options:v26 error:&v51];
    v27 = v51;
    v32 = *(v22 + 80);
    *(v22 + 80) = v31;

    if (v27)
    {
      v33 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "%@: Error creating CHHapticEngine: %@", buf, 0x16u);
      }
    }

    else
    {
      [*(v22 + 80) setFollowAudioRoute:1];
      v35 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        if ((v25 - 1) > 2)
        {
          v36 = @"none";
        }

        else
        {
          v36 = *(&off_1E711B630 + v25 - 1);
        }

        *buf = 138412546;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "%@: Creating engine with mode: %@.", buf, 0x16u);
      }

      [*(v22 + 80) setPlaysHapticsOnly:v25 == 2];
      [*(v22 + 80) setPlaysAudioOnly:v25 == 1];
      if (v25 == 1)
      {
        [*(v22 + 80) setAutoShutdownEnabled:1];
        v38 = +[_UIKBFeedbackGeneratorDomain rootSettings];
        [v38 autoShutdownTimeout];
        [*(v22 + 80) setAutoShutdownTimeout:?];
      }

      v39 = *(v22 + 8);
      objc_initWeak(&location, v22);
      v40 = *(v22 + 80);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke;
      v58 = &unk_1E711B400;
      v41 = v39;
      v59 = v41;
      objc_copyWeak(v60, &location);
      [v40 setStoppedHandler:buf];
      v42 = *(v22 + 80);
      *&v52 = MEMORY[0x1E69E9820];
      *(&v52 + 1) = 3221225472;
      v53 = __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_3;
      v54 = &unk_1E711B428;
      v33 = v41;
      v55 = v33;
      objc_copyWeak(&v56, &location);
      [v42 setResetHandler:&v52];
      objc_destroyWeak(&v56);

      objc_destroyWeak(v60);
      objc_destroyWeak(&location);
    }
  }

  v23 = *(*(a1 + 32) + 80);
  if (v23)
  {
LABEL_41:
    v47 = 0;
    v43 = [v23 createPlayerWithPattern:v15 error:{&v47, a4}];
    v44 = v47;
    if (v44)
    {
      v45 = _UIKBFeedbackLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v44;
        _os_log_error_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "Error creating CHHapticEngine: %@", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 40) setObject:v43 forKeyedSubscript:v6];
    }
  }

  else
  {
    *a4 = 1;
  }

LABEL_47:
}

void __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_2;
  v4[3] = &unk_1E70F8DC8;
  objc_copyWeak(v5, (a1 + 40));
  v5[1] = a2;
  dispatch_async(v3, v4);
  objc_destroyWeak(v5);
}

void __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  val = objc_loadWeakRetained((a1 + 32));
  if (val)
  {
    v2 = *(a1 + 40);
    dispatch_assert_queue_V2(val[1]);
    v3 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = val;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%@: Engine stopped with reason: %ld", buf, 0x16u);
    }

    [(_UIKBFeedbackGenerator *)val _setIsEngineRunning:?];
    objc_initWeak(&location, val);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __65___UIKBFeedbackGenerator__engineStoppedHandlerOnQueueWithReason___block_invoke;
    v7 = &unk_1E70F5A28;
    objc_copyWeak(v8, &location);
    [(_UIKBFeedbackGenerator *)val _deactivateWithCompletionBlock:buf];
    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

void __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_4;
  block[3] = &unk_1E70F5A28;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __63___UIKBFeedbackGenerator__createEngineOnQueueWithOptions_mode___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[1]);
    updated = [(_UIKBFeedbackGenerator *)v3 _updateMode];
    [(_UIKBFeedbackGenerator *)v3 _recreateEngineAndPlayersOnQueueWithMode:@"engine reset handler" reason:?];
    WeakRetained = v3;
  }
}

void __65___UIKBFeedbackGenerator__engineStoppedHandlerOnQueueWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 28) = 0;
    v3 = WeakRetained;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:WeakRetained selector:sel__stopEngineDueToIdle object:0];
    v2 = v3;
  }
}

void __43___UIKBFeedbackGenerator__resetWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43___UIKBFeedbackGenerator__resetWithReason___block_invoke_2;
  v3[3] = &unk_1E711B450;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  [(_UIKBFeedbackGenerator *)WeakRetained _performOnMain:v3];
}

void __43___UIKBFeedbackGenerator__resetWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(_UIKBFeedbackGenerator *)v3 _updateMode];
  if (*(a1 + 40) == 1)
  {
    v4 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@: Reactivating for reason: %@", &v6, 0x16u);
    }

    [v3 activateWithCompletionBlock:0];
  }
}

uint64_t __74___UIKBFeedbackGenerator__recreateEngineAndPlayersOnQueueWithMode_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a2 selector:sel__stopEngineDueToIdle object:0];
  }

  return result;
}

void __62___UIKBFeedbackGenerator__prewarmEngineOnQueueWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = _UIKBFeedbackLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Error prewarming: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = WeakRetained;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%@: Done preheating CoreHaptics.", &v8, 0xCu);
    }

    if (WeakRetained)
    {
      WeakRetained[28] = 1;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == 0);
  }
}

void __46___UIKBFeedbackGenerator__setIsEngineRunning___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    ++*(v3 + 6);
    v8 = v3;
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = *(v8 + 4);
    *(v8 + 4) = v4;
  }

  else
  {
    if (!*(v3 + 4))
    {
      goto LABEL_6;
    }

    v8 = v3;
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:*(*(a1 + 32) + 32)];
    v8[5] = v7 + v8[5];

    v5 = *(v8 + 4);
    v8[4] = 0.0;
  }

  v3 = v8;
LABEL_6:
}

uint64_t __65___UIKBFeedbackGenerator__startEngineOnQueueWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = *(a1 + 40);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = _UIKBFeedbackLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@: Error stopping CHHapticEngine: %@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = WeakRetained;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%@: Engine stopped.", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke_388;
    v8[3] = &unk_1E711B4E0;
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [(_UIKBFeedbackGenerator *)WeakRetained _performOnQueue:v8];
  }
}

void __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke_388(uint64_t a1, void *a2)
{
  v3 = a2;
  [(_UIKBFeedbackGenerator *)v3 _setIsEngineRunning:?];
  if (*(a1 + 40) == 1)
  {
    [(_UIKBFeedbackGenerator *)v3 _releaseEngineAndPlayersOnQueue];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke_2;
  v4[3] = &unk_1E711B508;
  v5 = *(a1 + 32);
  [(_UIKBFeedbackGenerator *)v3 _performOnMain:v4];
}

uint64_t __91___UIKBFeedbackGenerator__stopEngineIfNecessaryOnQueueAndReleaseResources_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = 0;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57___UIKBFeedbackGenerator__dictationDidBeginNotification___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2[10];
  v4 = _UIKBFeedbackLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@: Unmute haptics for dictation audio recording.", &v6, 0xCu);
    }

    [v2[10] setMuteHapticsWhileRecordingAudio:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%@: Couldn't update haptics muting for dictation audio recording. No engine.", &v6, 0xCu);
    }
  }
}

void __55___UIKBFeedbackGenerator__dictationDidEndNotification___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2[10];
  v4 = _UIKBFeedbackLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@: Muting haptics for audio recording.", &v6, 0xCu);
    }

    [v2[10] setMuteHapticsWhileRecordingAudio:1];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%@: Couldn't update haptics muting for dictation audio recording. No engine.", &v6, 0xCu);
    }
  }
}

uint64_t __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_405(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v6 = [v4 stringWithUTF8String:"-[_UIKBFeedbackGenerator activateWithCompletionBlock:]_block_invoke"];
  [(_UIKBFeedbackGenerator *)v5 _recreateEngineAndPlayersIfNecessaryOnQueueWithMode:v3 reason:v6];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_2;
  v14 = &unk_1E70F3608;
  v7 = *(a1 + 32);
  v15 = *(a1 + 40);
  v8 = &v11;
  if (v7)
  {
    v9 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%@: Preheating CoreHaptics.", &buf, 0xCu);
    }

    objc_initWeak(&location, v7);
    v10 = v7[10];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __62___UIKBFeedbackGenerator__prewarmEngineOnQueueWithCompletion___block_invoke;
    v19 = &unk_1E711B498;
    objc_copyWeak(v21, &location);
    v20 = v8;
    [v10 prewarmWithCompletionHandler:{&buf, v11, v12, v13, v14}];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_3;
  v3[3] = &unk_1E7101B70;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIKBFeedbackGenerator activateWithCompletionBlock:]_block_invoke_4"];
  [(_UIKBFeedbackGenerator *)v3 _recreateEngineAndPlayersIfNecessaryOnQueueWithMode:v4 reason:v5];

  objc_initWeak(&location, v3);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIKBFeedbackGenerator activateWithCompletionBlock:]_block_invoke_4"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_5;
  v7[3] = &unk_1E70FDEC0;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 32);
  [(_UIKBFeedbackGenerator *)v3 _startEngineIfNecessaryOnQueueWithReason:v6 completionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_5(uint64_t a1, char a2)
{
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_6;
  v5[3] = &unk_1E711B4E0;
  v7 = a2;
  v6 = *(a1 + 32);
  [(_UIKBFeedbackGenerator *)v4 _performOnMain:v5];

  objc_destroyWeak(&to);
}

uint64_t __54___UIKBFeedbackGenerator_activateWithCompletionBlock___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    [(_UIKBFeedbackGenerator *)a2 _resetIdleTimer];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __36___UIKBFeedbackGenerator_deactivate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIKBFeedbackGenerator *)WeakRetained _sendAnalyticsEvent];
}

uint64_t __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _UIKBFeedbackLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@: Cooling CoreHaptics.", buf, 0xCu);
    }

    [*(a2 + 80) stopPrewarm];
    *(a2 + 28) = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIKBFeedbackGenerator__deactivateWithCompletionBlock___block_invoke_3;
  block[3] = &unk_1E70F0F78;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63___UIKBFeedbackGenerator_actionOccurred_textLength_atLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  v169 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    dispatch_assert_queue_V2(*(a2 + 8));
    if ((*(a2 + 76) & 1) == 0)
    {
      if (*(a2 + 77) == 1 && (*(a2 + 78) & 1) == 0)
      {
        v42 = *(a2 + 96);
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
        v7 = [v42 objectForKeyedSubscript:v43];

        if (v7)
        {
          v44 = [v7 integerValue];
          v161 = 0;
          v162 = &v161;
          v163 = 0x2020000000;
          v45 = off_1ED49FE08;
          v164 = off_1ED49FE08;
          if (!off_1ED49FE08)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke_1;
            v167 = &unk_1E70F2F20;
            v168 = &v161;
            __getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke_1(buf);
            v45 = v162[3];
          }

          _Block_object_dispose(&v161, 8);
          if (!v45)
          {
            v136 = [MEMORY[0x1E696AAA8] currentHandler];
            v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __AudioServicesPlaySystemSoundWithOptions(SystemSoundID, CFDictionaryRef, __strong dispatch_block_t)"}];
            [v136 handleFailureInFunction:v137 file:@"_UIKBFeedbackGenerator.m" lineNumber:61 description:{@"%s", dlerror()}];

            goto LABEL_92;
          }

          (v45)(v44, 0, 0);
        }
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIKBFeedbackGenerator _actionOccurred:]"];
        [(_UIKBFeedbackGenerator *)a2 _startEngineIfNecessaryOnQueueWithReason:v4 completionBlock:0];

        if ((*(a2 + 160) & 1) == 0)
        {
          v7 = _UIKBFeedbackLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = a2;
            _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@: Engine is not running. Can't play feedback.", buf, 0xCu);
          }

          goto LABEL_84;
        }

        v5 = *(a2 + 88);
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
        v7 = [v5 objectForKeyedSubscript:v6];

        if (v7)
        {
          v8 = [MEMORY[0x1E695DF00] now];
          [v8 timeIntervalSinceReferenceDate];

          v9 = *(a2 + 72);
          v10 = +[_UIKBFeedbackGeneratorDomain rootSettings];
          [v10 systemRingerVolumeMin];
          v12 = v11;
          [v10 systemRingerVolumeMax];
          v14 = v13;
          [v10 adjustedRingerVolumeMin];
          v16 = v15;
          [v10 adjustedRingerVolumeMax];
          v18 = v17;

          [*(a2 + 80) currentTime];
          v154 = +[_UIKBFeedbackGeneratorDomain rootSettings];
          v19 = (v9 - v12) / (v14 - v12);
          v20 = 1.0;
          v21 = v19 * v18 + v16 * (1.0 - v19);
          v22 = 0.0;
          if (!+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled])
          {
            v46 = 0.0;
            v153 = 0.0;
LABEL_59:
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v134 = _UIKBFeedbackLog();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = a2;
                _os_log_error_impl(&dword_188A29000, v134, OS_LOG_TYPE_ERROR, "%@: CHHapticPatternPlayer does not support immediate parameters.", buf, 0xCu);
              }

              goto LABEL_82;
            }

            v108 = v7;
            v161 = 0;
            v162 = &v161;
            v163 = 0x2020000000;
            v109 = qword_1ED49FE18;
            v164 = qword_1ED49FE18;
            if (!qword_1ED49FE18)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getCHHapticEventParameterIDAudioVolumeSymbolLoc_block_invoke_0;
              v167 = &unk_1E70F2F20;
              v168 = &v161;
              v110 = CoreHapticsLibrary_1();
              v111 = dlsym(v110, "CHHapticEventParameterIDAudioVolume");
              *(v168[1] + 3) = v111;
              qword_1ED49FE18 = *(v168[1] + 3);
              v109 = v162[3];
            }

            v150 = v108;
            _Block_object_dispose(&v161, 8);
            if (v109)
            {
              v149 = *v109;
              v159[0] = v149;
              v152 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
              v161 = v152;
              v155 = 0;
              v156 = &v155;
              v157 = 0x2020000000;
              v112 = qword_1ED49FE20;
              v158 = qword_1ED49FE20;
              if (!qword_1ED49FE20)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __getCHHapticEventParameterIDHapticIntensitySymbolLoc_block_invoke_0;
                v167 = &unk_1E70F2F20;
                v168 = &v155;
                v113 = CoreHapticsLibrary_1();
                v114 = dlsym(v113, "CHHapticEventParameterIDHapticIntensity");
                *(v168[1] + 3) = v114;
                qword_1ED49FE20 = *(v168[1] + 3);
                v112 = v156[3];
              }

              _Block_object_dispose(&v155, 8);
              if (v112)
              {
                v148 = *v112;
                v159[1] = v148;
                v151 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
                v162 = v151;
                v155 = 0;
                v156 = &v155;
                v157 = 0x2020000000;
                v115 = qword_1ED49FE28;
                v158 = qword_1ED49FE28;
                if (!qword_1ED49FE28)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getCHHapticEventParameterIDAudioPitchSymbolLoc_block_invoke_0;
                  v167 = &unk_1E70F2F20;
                  v168 = &v155;
                  v116 = CoreHapticsLibrary_1();
                  v117 = dlsym(v116, "CHHapticEventParameterIDAudioPitch");
                  *(v168[1] + 3) = v117;
                  qword_1ED49FE28 = *(v168[1] + 3);
                  v115 = v156[3];
                }

                _Block_object_dispose(&v155, 8);
                if (v115)
                {
                  v118 = *v115;
                  v159[2] = v118;
                  v119 = [MEMORY[0x1E696AD98] numberWithDouble:v153];
                  v163 = v119;
                  v155 = 0;
                  v156 = &v155;
                  v157 = 0x2020000000;
                  v120 = qword_1ED49FE30;
                  v158 = qword_1ED49FE30;
                  if (!qword_1ED49FE30)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __getCHHapticEventParameterIDAudioPanSymbolLoc_block_invoke_0;
                    v167 = &unk_1E70F2F20;
                    v168 = &v155;
                    v121 = CoreHapticsLibrary_1();
                    v122 = dlsym(v121, "CHHapticEventParameterIDAudioPan");
                    *(v168[1] + 3) = v122;
                    qword_1ED49FE30 = *(v168[1] + 3);
                    v120 = v156[3];
                  }

                  _Block_object_dispose(&v155, 8);
                  if (v120)
                  {
                    v123 = *v120;
                    v159[3] = v123;
                    v124 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
                    v164 = v124;
                    v155 = 0;
                    v156 = &v155;
                    v157 = 0x2020000000;
                    v125 = qword_1ED49FE38;
                    v158 = qword_1ED49FE38;
                    if (!qword_1ED49FE38)
                    {
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&buf[16] = __getCHHapticEventParameterIDAudioBrightnessSymbolLoc_block_invoke_0;
                      v167 = &unk_1E70F2F20;
                      v168 = &v155;
                      v126 = CoreHapticsLibrary_1();
                      v127 = dlsym(v126, "CHHapticEventParameterIDAudioBrightness");
                      *(v168[1] + 3) = v127;
                      qword_1ED49FE38 = *(v168[1] + 3);
                      v125 = v156[3];
                    }

                    _Block_object_dispose(&v155, 8);
                    if (v125)
                    {
                      v160 = *v125;
                      v128 = MEMORY[0x1E696AD98];
                      v129 = v160;
                      v130 = [v128 numberWithDouble:v22];
                      v165 = v130;
                      v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:v159 count:5];
                      v155 = 0;
                      [v150 startAtTime:v131 withImmediateParameters:&v155 error:0.0];
                      v132 = v155;

                      if (v132)
                      {
                        v133 = _UIKBFeedbackLog();
                        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          *&buf[4] = a2;
                          *&buf[12] = 2112;
                          *&buf[14] = v132;
                          _os_log_error_impl(&dword_188A29000, v133, OS_LOG_TYPE_ERROR, "%@: Error starting player: %@", buf, 0x16u);
                        }

                        goto LABEL_83;
                      }

                      *(a2 + 112) = v21;
                      *(a2 + 120) = v20;
                      *(a2 + 128) = v153;
                      *(a2 + 136) = v46;
                      *(a2 + 144) = v22;
                      ++*(a2 + 56);
                      v134 = v150;
LABEL_82:

                      [*(a2 + 80) currentTime];
                      *(a2 + 104) = v135;
LABEL_83:

                      goto LABEL_84;
                    }

                    v146 = [MEMORY[0x1E696AAA8] currentHandler];
                    v147 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioBrightness(void)"];
                    [v146 handleFailureInFunction:v147 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:60 description:{@"%s", dlerror()}];
                  }

                  else
                  {
                    v144 = [MEMORY[0x1E696AAA8] currentHandler];
                    v145 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioPan(void)"];
                    [v144 handleFailureInFunction:v145 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:59 description:{@"%s", dlerror()}];
                  }
                }

                else
                {
                  v142 = [MEMORY[0x1E696AAA8] currentHandler];
                  v143 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioPitch(void)"];
                  [v142 handleFailureInFunction:v143 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:58 description:{@"%s", dlerror()}];
                }
              }

              else
              {
                v140 = [MEMORY[0x1E696AAA8] currentHandler];
                v141 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDHapticIntensity(void)"];
                [v140 handleFailureInFunction:v141 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:49 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              v138 = [MEMORY[0x1E696AAA8] currentHandler];
              v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventParameterID getCHHapticEventParameterIDAudioVolume(void)"];
              [v138 handleFailureInFunction:v139 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:57 description:{@"%s", dlerror()}];
            }

LABEL_92:
            __break(1u);
          }

          [*(a2 + 80) currentTime];
          v24 = v23;
          v25 = *(a2 + 104);
          v26 = +[_UIKBFeedbackGeneratorDomain rootSettings];
          v27 = v24 - v25;
          [v26 typingSlowInterval];
          v28 = 1.0;
          if (v29 > v24 - v25)
          {
            [v26 typingFastInterval];
            v31 = v30;
            [v26 typingSlowInterval];
            v33 = v32;
            [v26 typingFastInterval];
            v35 = v34;
            v36 = [v26 indivisualKeyAudioVolume];
            v28 = [_UIKBFeedbackGenerator eventParameter:v36 setting:(v27 - v31) / (v33 - v35) previousValue:*(a2 + 112) timeSinceLastAction:v27];
          }

          v37 = +[_UIKBFeedbackGeneratorDomain rootSettings];
          v38 = v37;
          if (v3 <= 0xA && ((1 << v3) & 0x630) != 0 && *(a2 + 152) > 0)
          {
            v39 = [v37 predictiveTextFeedbackOption];
            v40 = *(a2 + 152);
            if (v39)
            {
              v153 = 0.0;
              if (v40 >= 2)
              {
                if (v40)
                {
                  [v38 predictiveTextOddAudioPitch];
                }

                else
                {
                  [v38 predictiveTextEvenAudioPitch];
                }

                v153 = v41;
              }

LABEL_32:

              v60 = +[_UIKBFeedbackGeneratorDomain rootSettings];
              [v60 typingSlowInterval];
              v46 = 0.0;
              if (v61 > v27)
              {
                if (v3 <= 0xA && ((1 << v3) & 0x630) != 0 && (v62 = *(a2 + 152), v62 > 0))
                {
                  v63 = [v60 predictiveTextMinLength];
                  v64 = [v60 predictiveTextMaxLength];
                  v65 = [v60 predictiveTextMinLength];
                  v66 = [v60 predictiveTextAudioPan];
                  v67 = (v62 - v63) / (v64 - v65);
                  v68 = *(a2 + 136);
                }

                else
                {
                  [v60 typingFastInterval];
                  v70 = v69;
                  [v60 typingSlowInterval];
                  v72 = v71;
                  [v60 typingFastInterval];
                  v74 = v73;
                  v66 = [v60 indivisualKeyAudioPan];
                  v68 = *(a2 + 136);
                  v67 = (v27 - v70) / (v72 - v74);
                }

                v46 = [_UIKBFeedbackGenerator eventParameter:v66 setting:v67 previousValue:v68 timeSinceLastAction:v27];
              }

              v75 = +[_UIKBFeedbackGeneratorDomain rootSettings];
              v76 = v75;
              if (v3 <= 0xA && ((1 << v3) & 0x630) != 0 && *(a2 + 152) > 0)
              {
                v77 = [v75 predictiveTextFeedbackOption];
                v78 = *(a2 + 152);
                if (v77)
                {
                  if (v78 > 5)
                  {
                    [v76 predictiveTextLongAudioBrightness];
                  }

                  else
                  {
                    [v76 predictiveTextShortAudioBrightness];
                  }

                  v22 = v79;
                  goto LABEL_51;
                }

                v90 = [v76 predictiveTextMinLength];
                v91 = [v76 predictiveTextMaxLength];
                v92 = [v76 predictiveTextMinLength];
                v87 = [v76 predictiveTextAudioBrightness];
                v89 = (v78 - v90) / (v91 - v92);
                v88 = *(a2 + 144);
              }

              else
              {
                [v75 typingSlowInterval];
                v22 = 0.0;
                if (v80 <= v27)
                {
LABEL_51:

                  v93 = +[_UIKBFeedbackGeneratorDomain rootSettings];
                  [v93 typingSlowInterval];
                  v20 = 1.0;
                  if (v94 > v27)
                  {
                    if (v3 <= 0xA && ((1 << v3) & 0x630) != 0 && (v95 = *(a2 + 152), v95 > 0))
                    {
                      v96 = [v93 predictiveTextMinLength];
                      v97 = [v93 predictiveTextMaxLength];
                      v98 = [v93 predictiveTextMinLength];
                      v99 = [v93 predictiveTextHaptic];
                      v100 = (v95 - v96) / (v97 - v98);
                      v101 = *(a2 + 120);
                    }

                    else
                    {
                      [v93 typingFastInterval];
                      v103 = v102;
                      [v93 typingSlowInterval];
                      v105 = v104;
                      [v93 typingFastInterval];
                      v107 = v106;
                      v99 = [v93 indivisualKeyHaptic];
                      v101 = *(a2 + 120);
                      v100 = (v27 - v103) / (v105 - v107);
                    }

                    v20 = [_UIKBFeedbackGenerator eventParameter:v99 setting:v100 previousValue:v101 timeSinceLastAction:v27];
                  }

                  v21 = v21 * v28;

                  goto LABEL_59;
                }

                [v76 typingFastInterval];
                v82 = v81;
                [v76 typingSlowInterval];
                v84 = v83;
                [v76 typingFastInterval];
                v86 = v85;
                v87 = [v76 indivisualKeyAudioBrightness];
                v88 = *(a2 + 144);
                v89 = (v27 - v82) / (v84 - v86);
              }

              v22 = [_UIKBFeedbackGenerator eventParameter:v87 setting:v89 previousValue:v88 timeSinceLastAction:v27];

              goto LABEL_51;
            }

            v153 = 0.0;
            if (v40 < 2)
            {
              goto LABEL_32;
            }

            v57 = [v38 predictiveTextMinLength];
            v58 = [v38 predictiveTextMaxLength];
            v59 = [v38 predictiveTextMinLength];
            v54 = [v38 predictiveTextAudioPitch];
            v56 = (v40 - v57) / (v58 - v59);
            v55 = *(a2 + 128);
          }

          else
          {
            [v37 typingSlowInterval];
            v153 = 0.0;
            if (v47 <= v27)
            {
              goto LABEL_32;
            }

            [v38 typingFastInterval];
            v49 = v48;
            [v38 typingSlowInterval];
            v51 = v50;
            [v38 typingFastInterval];
            v53 = v52;
            v54 = [v38 indivisualKeyAudioPitch];
            v55 = *(a2 + 128);
            v56 = (v27 - v49) / (v51 - v53);
          }

          v153 = [_UIKBFeedbackGenerator eventParameter:v54 setting:v56 previousValue:v55 timeSinceLastAction:v27];

          goto LABEL_32;
        }
      }

LABEL_84:
    }
  }
}

@end