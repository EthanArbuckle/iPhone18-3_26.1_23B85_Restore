@interface TLAlertController
+ (BOOL)_shouldStopAlertForUserInterruption:(id)a3;
+ (TLAlertController)sharedAlertController;
+ (int64_t)_playbackBackEndForAlert:(id)a3;
+ (int64_t)_playbackBackEndForAlertType:(int64_t)a3 topic:(id)a4;
- (BOOL)_stopAllAlertsInCurrentProcessWithUserInterruptionDate:(id)a3;
- (BOOL)_stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (BOOL)stopAllAlerts;
- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (TLAlertController)init;
- (id)_controllerForPlaybackBackEnd:(int64_t)a3;
- (id)_pairedWatchController;
- (id)_prepareForPlayingAlert:(id)a3;
- (id)_queuePlayerController;
- (id)_systemSoundController;
- (void)_assertRunningOnAccessQueue;
- (void)_didCompletePlaybackOfAlert:(id)a3;
- (void)_didReachTimeoutForAlert:(id)a3;
- (void)_handleUserInterruptionNotification:(id)a3;
- (void)_performBlockOnAccessQueue:(id)a3;
- (void)dealloc;
- (void)playAlert:(id)a3 withCompletionHandler:(id)a4;
- (void)preheatForAlert:(id)a3 completionHandler:(id)a4;
- (void)updateAudioVolumeDynamicallyForAlert:(id)a3 toValue:(float)a4;
@end

@implementation TLAlertController

+ (TLAlertController)sharedAlertController
{
  if (sharedAlertController__TLAlertControllerSharedInstanceOnceToken != -1)
  {
    +[TLAlertController sharedAlertController];
  }

  v3 = sharedAlertController__TLAlertControllerSharedInstance;

  return v3;
}

uint64_t __42__TLAlertController_sharedAlertController__block_invoke()
{
  sharedAlertController__TLAlertControllerSharedInstance = objc_alloc_init(TLAlertController);

  return MEMORY[0x1EEE66BB8]();
}

- (TLAlertController)init
{
  v21.receiver = self;
  v21.super_class = TLAlertController;
  v2 = [(TLAlertController *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    v6 = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [v4 stringWithFormat:@"%@.%@-%@-%@", v6, v7, @"AccessQueue", v9];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v10;

    v12 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v12;

    v14 = +[TLSystemApplication defaultSystemApplication];
    if (!v14)
    {
      goto LABEL_4;
    }

    v15 = [MEMORY[0x1E696AAE8] mainBundle];
    v16 = [v15 bundleIdentifier];
    v17 = [v14 bundleIdentifier];
    v18 = [v16 isEqualToString:v17];

    if ((v18 & 1) == 0)
    {
LABEL_4:
      v19 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v19 addObserver:v2 selector:sel__handleUserInterruptionNotification_ name:@"_TLAlertControllerUserInterruptionNotification" object:0];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_accessQueue;
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;

  v5 = +[TLSystemApplication defaultSystemApplication];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
LABEL_3:
    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v10 removeObserver:self name:@"_TLAlertControllerUserInterruptionNotification" object:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__TLAlertController_dealloc__block_invoke;
  block[3] = &unk_1E85789A0;
  block[4] = self;
  dispatch_sync(v3, block);

  v11.receiver = self;
  v11.super_class = TLAlertController;
  [(TLAlertController *)&v11 dealloc];
}

void __28__TLAlertController_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] now];
  [v1 _stopAllAlertsInCurrentProcessWithUserInterruptionDate:v2];
}

- (void)_performBlockOnAccessQueue:(id)a3
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, a3);
  }
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
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLAlertController _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = v10;
          v18 = 2049;
          v19 = 117;
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
          [(TLToneStoreDownloadStoreServicesController *)v8 _assertRunningOnAccessQueue];
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(TLToneStoreDownloadStoreServicesController *)v12 _assertRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)stopAllAlerts
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopAllAlerts was called.", &buf, 0xCu);
  }

  v4 = [MEMORY[0x1E695DF00] now];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x2020000000;
  v33 = 0;
  v5 = +[TLSystemApplication defaultSystemApplication];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __34__TLAlertController_stopAllAlerts__block_invoke;
    v20[3] = &unk_1E85789C8;
    p_buf = &buf;
    v20[4] = self;
    v10 = v4;
    v21 = v10;
    [(TLAlertController *)self _performBlockOnAccessQueue:v20];
    v11 = TLLogPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = @"_TLAlertControllerUserInterruptionNotification";
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Will post %{public}@ notification with user interruption date: %{public}@.", v25, 0x20u);
    }

    v12 = [MEMORY[0x1E696ABB0] defaultCenter];
    v23 = @"userInterruptionDate";
    v24 = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v12 postNotificationName:@"_TLAlertControllerUserInterruptionNotification" object:0 userInfo:v13];

    v14 = TLLogPlayback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = @"_TLAlertControllerUserInterruptionNotification";
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Did post %{public}@ notification with user interruption date: %{public}@.", v25, 0x20u);
    }
  }

  else
  {
LABEL_10:
    v15 = MEMORY[0x1E695DF30];
    v16 = [v5 name];
    [v15 raise:*MEMORY[0x1E695D930] format:{@"The method +[TLAlert _stopAllAlerts] should not be called from anywere except the %@ process.", v16}];
  }

  v17 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

uint64_t __34__TLAlertController_stopAllAlerts__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _stopAllAlertsInCurrentProcessWithUserInterruptionDate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)playAlert:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__TLAlertController_playAlert_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85789C8;
  v17 = &v18;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  [(TLAlertController *)self _performBlockOnAccessQueue:v15];
  v9 = v19[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__TLAlertController_playAlert_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E8579D18;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 playAlert:v10 withCompletionHandler:v12];

  _Block_object_dispose(&v18, 8);
}

uint64_t __53__TLAlertController_playAlert_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _prepareForPlayingAlert:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __53__TLAlertController_playAlert_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__TLAlertController_playAlert_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E8578900;
  v8[4] = v6;
  v9 = *(a1 + 40);
  [v6 _performBlockOnAccessQueue:v8];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__TLAlertController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
  v13[3] = &unk_1E8579D40;
  v16 = &v18;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  v17 = a5;
  [(TLAlertController *)self _performBlockOnAccessQueue:v13];
  LOBYTE(a5) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return a5;
}

uint64_t __74__TLAlertController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _stopPlayingAlerts:*(a1 + 40) withOptions:*(a1 + 48) playbackCompletionType:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)updateAudioVolumeDynamicallyForAlert:(id)a3 toValue:(float)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66__TLAlertController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke;
  v13 = &unk_1E8578AE0;
  v14 = self;
  v7 = v6;
  v15 = v7;
  v16 = &v17;
  [(TLAlertController *)self _performBlockOnAccessQueue:&v10];
  v8 = v18[5];
  if (objc_opt_respondsToSelector())
  {
    *&v9 = a4;
    [v18[5] updateAudioVolumeDynamicallyForAlert:v7 toValue:v9];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Updating the audio volume of %@ is not supported. Please refer to TLAlert_Private.h for more details on the limitations of the audio volume dynamic update API.", v7, v10, v11, v12, v13, v14}];
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __66__TLAlertController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 32) _controllerForPlaybackBackEnd:{objc_msgSend(objc_opt_class(), "_playbackBackEndForAlert:", *(a1 + 40))}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __81__TLAlertController_handleActivationAssertionStatusChangeForAlert_updatedStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 32) _controllerForPlaybackBackEnd:{objc_msgSend(objc_opt_class(), "_playbackBackEndForAlert:", *(a1 + 40))}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_prepareForPlayingAlert:(id)a3
{
  v4 = a3;
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  v5 = [objc_opt_class() _playbackBackEndForAlert:v4];
  v6 = objc_alloc_init(TLAlertContext);
  [(TLAlertContext *)v6 setPlaybackBackEnd:v5];
  v7 = [MEMORY[0x1E695DF00] now];
  [(TLAlertContext *)v6 setPlaybackStartDate:v7];

  alertContexts = self->_alertContexts;
  if (!alertContexts)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    v10 = self->_alertContexts;
    self->_alertContexts = v9;

    alertContexts = self->_alertContexts;
  }

  [(NSMapTable *)alertContexts setObject:v6 forKey:v4];
  v11 = [v4 configuration];
  [v11 maximumDuration];
  v13 = v12;

  if (v13 > 0.00000011920929)
  {
    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_accessQueue);
    v15 = dispatch_time(0, (v13 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __45__TLAlertController__prepareForPlayingAlert___block_invoke;
    v21 = &unk_1E8578900;
    v22 = self;
    v23 = v4;
    dispatch_source_set_event_handler(v14, &v18);
    [(TLAlertContext *)v6 setTimeoutTimerSource:v14, v18, v19, v20, v21, v22];
    dispatch_resume(v14);
  }

  v16 = [(TLAlertController *)self _controllerForPlaybackBackEnd:v5];

  return v16;
}

- (BOOL)_stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35 = a4;
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v43;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v42 + 1) + 8 * i);
      v14 = [(NSMapTable *)self->_alertContexts objectForKey:v13];
      v15 = v14;
      if (!v14)
      {
        v16 = TLLogPlayback();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138543618;
        v48 = self;
        v49 = 2114;
        v50 = v13;
        v17 = v16;
        v18 = "%{public}@: No alert context could be found for %{public}@. This alert is not playing; ignoring stop request.";
        goto LABEL_12;
      }

      if ([v14 isBeingInterrupted])
      {
        v16 = TLLogPlayback();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138543618;
        v48 = self;
        v49 = 2114;
        v50 = v13;
        v17 = v16;
        v18 = "%{public}@: %{public}@ is already being interrupted; ignoring stop request.";
LABEL_12:
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
        goto LABEL_19;
      }

      [v15 setBeingInterrupted:1];
      v19 = [v15 playbackBackEnd];
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
      v20 = [v10 objectForKey:v16];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v10 setObject:v21 forKey:v16];
      }

      [v21 addObject:v13];

LABEL_19:
    }

    v9 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  }

  while (v9);
LABEL_23:

  if ([v10 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
    v24 = v35;
    if (v23)
    {
      v25 = v23;
      v26 = 0;
      v27 = *v39;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v38 + 1) + 8 * j);
          v30 = [v22 objectForKey:v29];
          v31 = -[TLAlertController _controllerForPlaybackBackEnd:](self, "_controllerForPlaybackBackEnd:", [v29 integerValue]);
          v32 = v31;
          if (v31)
          {
            v26 |= [v31 stopPlayingAlerts:v30 withOptions:v35 playbackCompletionType:a5];
          }
        }

        v25 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v25);
    }

    else
    {
      LOBYTE(v26) = 0;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
    v24 = v35;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (void)_didReachTimeoutForAlert:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  [(TLAlertController *)self _stopPlayingAlerts:v5 withOptions:0 playbackCompletionType:1];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_didCompletePlaybackOfAlert:(id)a3
{
  v8 = a3;
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  v4 = [(NSMapTable *)self->_alertContexts objectForKey:v8];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 timeoutTimerSource];
    v7 = v6;
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    [(NSMapTable *)self->_alertContexts removeObjectForKey:v8];
  }
}

- (void)preheatForAlert:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55__TLAlertController_preheatForAlert_completionHandler___block_invoke;
  v13 = &unk_1E8578AE0;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v16 = &v17;
  [(TLAlertController *)self _performBlockOnAccessQueue:&v10];
  v9 = v18[5];
  if (objc_opt_respondsToSelector())
  {
    [v18[5] preheatForAlert:v8 completionHandler:v7];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Pre-heating for %@ is not supported.", v8, v10, v11, v12, v13, v14}];
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __55__TLAlertController_preheatForAlert_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 32) _controllerForPlaybackBackEnd:{objc_msgSend(objc_opt_class(), "_playbackBackEndForAlert:", *(a1 + 40))}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

+ (int64_t)_playbackBackEndForAlert:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 configuration];

  v7 = [v6 topic];
  v8 = [a1 _playbackBackEndForAlertType:v5 topic:v7];
  if ([v6 targetDevice] == 1)
  {
    v8 = 2;
  }

  return v8;
}

+ (int64_t)_playbackBackEndForAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = 1;
  if (a3 > 16)
  {
    if (a3 > 21)
    {
      if (a3 != 22)
      {
        if (a3 != 28)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      v7 = TLAlertTopicSOSCountdownTick;
    }

    else
    {
      if (a3 != 17)
      {
        v6 = a3 != 18;
        goto LABEL_23;
      }

      v7 = TLAlertTopicAppNotificationCriticalAlert;
    }

    v6 = [v5 isEqualToString:*v7] ^ 1;
    goto LABEL_23;
  }

  if (a3 > 13)
  {
    if (a3 != 14)
    {
      if (a3 != 16)
      {
        goto LABEL_23;
      }

      if (([v5 isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"TLAlertTopicSystemNotificationGeneric"))
      {
LABEL_19:
        v6 = 1;
        goto LABEL_23;
      }
    }

LABEL_16:
    v6 = 0;
    goto LABEL_23;
  }

  if (a3 == 1)
  {
    if ([v5 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"TLAlertTopicIncomingCallFaceTimeParticipantJoined"))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (a3 == 13)
  {
    v6 = [v5 isEqualToString:@"TLAlertTopicAlarmGoToSleep"];
  }

LABEL_23:
  v8 = v6;

  return v8;
}

+ (BOOL)_shouldStopAlertForUserInterruption:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v4 isForPreview];
  v6 = [v3 type];

  if (v6 == 28 || v6 == 22)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v5 ^ 1;
    if (v6 == 1)
    {
      v8 = [v4 topic];
      if (([v8 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicIncomingCallFaceTimeParticipantJoined") & 1) == 0)
      {
        v7 &= [v8 isEqualToString:@"TLAlertTopicIncomingCallAppNotification"];
      }
    }
  }

  return v7;
}

- (id)_controllerForPlaybackBackEnd:(int64_t)a3
{
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  if (a3 == 2)
  {
    v5 = [(TLAlertController *)self _pairedWatchController];
  }

  else if (a3 == 1)
  {
    v5 = [(TLAlertController *)self _systemSoundController];
  }

  else if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(TLAlertController *)self _queuePlayerController];
  }

  return v5;
}

- (id)_queuePlayerController
{
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  queuePlayerController = self->_queuePlayerController;
  if (!queuePlayerController)
  {
    v4 = objc_alloc_init(TLAlertQueuePlayerController);
    v5 = self->_queuePlayerController;
    self->_queuePlayerController = v4;

    queuePlayerController = self->_queuePlayerController;
  }

  return queuePlayerController;
}

- (id)_systemSoundController
{
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  systemSoundController = self->_systemSoundController;
  if (!systemSoundController)
  {
    v4 = objc_alloc_init(TLAlertSystemSoundController);
    v5 = self->_systemSoundController;
    self->_systemSoundController = v4;

    systemSoundController = self->_systemSoundController;
  }

  return systemSoundController;
}

- (id)_pairedWatchController
{
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  pairedWatchController = self->_pairedWatchController;
  if (!pairedWatchController)
  {
    v4 = objc_alloc_init(TLAlertPairedWatchController);
    v5 = self->_pairedWatchController;
    self->_pairedWatchController = v4;

    pairedWatchController = self->_pairedWatchController;
  }

  return pairedWatchController;
}

- (BOOL)_stopAllAlertsInCurrentProcessWithUserInterruptionDate:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a3;
  [(TLAlertController *)self _assertRunningOnAccessQueue];
  v4 = TLLogPlayback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v24;
    _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopAllAlertsInCurrentProcessWithUserInterruptionDate:(%{public}@) was called.", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_alertContexts;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v23 = 0;
    v9 = *v26;
    *&v7 = 138543874;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if ([objc_opt_class() _shouldStopAlertForUserInterruption:v11])
        {
          v12 = [(NSMapTable *)self->_alertContexts objectForKey:v11];
          v13 = [v12 playbackStartDate];
          v14 = [v13 compare:v24];
          v15 = TLLogPlayback();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v14 == -1)
          {
            if (v16)
            {
              *buf = v22;
              v30 = self;
              v31 = 2114;
              v32 = v13;
              v33 = 2114;
              v34 = v11;
              _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopAllAlertsInCurrentProcess…: Playback started at %{public}@, i.e. before user interruption, for %{public}@. Scheduling this alert to be interrupted.", buf, 0x20u);
            }

            v17 = v23;
            if (!v23)
            {
              v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v23 = v17;
            [v17 addObject:{v11, v22}];
          }

          else
          {
            if (v16)
            {
              *buf = v22;
              v30 = self;
              v31 = 2114;
              v32 = v13;
              v33 = 2114;
              v34 = v11;
              _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopAllAlertsInCurrentProcess…: Playback started at %{public}@, i.e. after user interruption, for %{public}@. Leaving this alert playing.", buf, 0x20u);
            }
          }
        }
      }

      v8 = [(NSMapTable *)v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v23 = 0;
  }

  v18 = [(TLAlertController *)self _stopPlayingAlerts:v23 withOptions:0 playbackCompletionType:3];
  v19 = TLLogPlayback();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 1024;
    LODWORD(v32) = v18;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopAllAlertsInCurrentProcess…: Returning willStopAnyAlert = %{BOOL}u.", buf, 0x12u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_handleUserInterruptionNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleUserInterruptionNotification:(%{public}@).", buf, 0x16u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"userInterruptionDate"];

  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleUserInterruption…: User interruption date: %{public}@.", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__TLAlertController__handleUserInterruptionNotification___block_invoke;
  v11[3] = &unk_1E8578900;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  [(TLAlertController *)self _performBlockOnAccessQueue:v11];

  v10 = *MEMORY[0x1E69E9840];
}

@end