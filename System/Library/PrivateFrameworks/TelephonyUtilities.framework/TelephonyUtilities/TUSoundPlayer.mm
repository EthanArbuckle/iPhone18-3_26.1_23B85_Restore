@interface TUSoundPlayer
- (BOOL)isCurrentPlaying;
- (BOOL)isRepeatingActorPlaying;
- (TUSoundPlayer)init;
- (unsigned)soundID;
- (void)playSound:(unsigned int)a3 iterations:(unint64_t)a4 pauseDurationBetweenIterations:(double)a5 completion:(id)a6;
- (void)setIsCurrentPlaying:(BOOL)a3;
- (void)setSoundID:(unsigned int)a3;
- (void)stopPlaying;
@end

@implementation TUSoundPlayer

- (void)stopPlaying
{
  if ([(TUSoundPlayer *)self isRepeatingActorPlaying])
  {
    v3 = [(TUSoundPlayer *)self repeatingActor];
    [v3 stop];

    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "TUSoundPlayer: stop playing", buf, 2u);
    }

    v5 = [(TUSoundPlayer *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__TUSoundPlayer_stopPlaying__block_invoke;
    block[3] = &unk_1E7424950;
    block[4] = self;
    dispatch_async(v5, block);
  }

  v6 = [(TUSoundPlayer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__TUSoundPlayer_stopPlaying__block_invoke_30;
  v7[3] = &unk_1E7424950;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (BOOL)isRepeatingActorPlaying
{
  v2 = [(TUSoundPlayer *)self repeatingActor];
  v3 = [v2 isRunning];

  return v3;
}

- (BOOL)isCurrentPlaying
{
  v3 = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_currentPlaying;
}

- (TUSoundPlayer)init
{
  v11.receiver = self;
  v11.super_class = TUSoundPlayer;
  v2 = [(TUSoundPlayer *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.telephonyutilities.tusoundplayer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(TURepeatingActor);
    repeatingActor = v2->_repeatingActor;
    v2->_repeatingActor = v6;

    v8 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v2->_configurationProvider;
    v2->_configurationProvider = v8;
  }

  return v2;
}

- (unsigned)soundID
{
  v3 = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_soundID;
}

- (void)setSoundID:(unsigned int)a3
{
  v5 = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_soundID = a3;
}

- (void)setIsCurrentPlaying:(BOOL)a3
{
  v5 = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_currentPlaying = a3;
}

- (void)playSound:(unsigned int)a3 iterations:(unint64_t)a4 pauseDurationBetweenIterations:(double)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = TUDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 == -1)
    {
      v13 = @"Infinite";
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    }

    *buf = 67109634;
    v23 = a3;
    v24 = 2112;
    v25 = v13;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Asked to play sound with soundID: %d iterations: %@ pauseDurationBetweenIterations: %f", buf, 0x1Cu);
    if (a4 != -1)
    {
    }
  }

  [(TUSoundPlayer *)self stopPlaying];
  v14 = [(TUSoundPlayer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke;
  block[3] = &unk_1E74256D0;
  block[4] = self;
  v21 = a3;
  dispatch_async(v14, block);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_5;
  aBlock[3] = &unk_1E7425720;
  aBlock[4] = self;
  aBlock[5] = a2;
  aBlock[6] = a4;
  *&aBlock[7] = a5;
  v19 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(TUSoundPlayer *)self repeatingActor];
  [v16 beginRepeatingAction:v15 iterations:a4 pauseDurationBetweenIterations:v11 completion:a5];

  v17 = *MEMORY[0x1E69E9840];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setSoundID:*(a1 + 40)];
  [*(a1 + 32) setIsCurrentPlaying:1];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) soundID];
    v4 = [*(a1 + 32) isCurrentPlaying];
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Started to play current soundID: %d, isCurrentPlaying: %d", v6, 0xEu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2;
  v8[3] = &unk_1E74256F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if ([*(a1 + 32) isCurrentPlaying])
  {
    if (TUSoundPlayerInfiniteIterations_block_invoke__pred__kAudioServicesPlaySystemSoundOptionLoopKey != -1)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_1();
    }

    if (!TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_2(a1, v2);
    }

    if (TUSoundPlayerInfiniteIterations_block_invoke__pred_AudioServicesPlaySystemSoundWithOptionsAudioToolbox != -1)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_3();
    }

    v3 = *(a1 + 56) == -1 && *(a1 + 64) == 0.0;
    v21 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v4 = [v7 mutableCopy];

    if (*(a1 + 72) == 36)
    {
      v8 = [*v2 configurationProvider];
      v9 = [v8 isCallHapticsEnabled];

      if ((v9 & 1) == 0)
      {
        if (TUSoundPlayerInfiniteIterations_block_invoke__pred__kAudioServicesPlaySystemSoundOptionFlagsKey != -1)
        {
          __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_4();
        }

        v10 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey;
        if (!TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey)
        {
          __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_5(a1, v2, &v16);
          v10 = v16;
        }

        v19 = v10;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
        v20 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v4 addEntriesFromDictionary:v12];
      }
    }

    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*v2 soundID];
      LODWORD(v16) = 67109378;
      HIDWORD(v16) = v14;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Calling AudioServicesPlaySystemSoundWithCompletion with soundID: %d options: %@", &v16, 0x12u);
    }

    (TUSoundPlayerInfiniteIterations_block_invoke__AudioServicesPlaySystemSoundWithOptions)([*(a1 + 32) soundID], v4, *(a1 + 40));
  }

  else
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*v2 soundID];
      LODWORD(v16) = 67109120;
      HIDWORD(v16) = v5;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "soundID: %d is stopped, don't play", &v16, 8u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_6()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey, v1);
}

void *__80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_18()
{
  result = CUTWeakLinkSymbol();
  TUSoundPlayerInfiniteIterations_block_invoke__AudioServicesPlaySystemSoundWithOptions = result;
  return result;
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey, v1);
}

uint64_t __28__TUSoundPlayer_stopPlaying__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (TUSoundPlayerInfiniteIterations_block_invoke_2__pred_AudioServicesStopSystemSoundAudioToolbox != -1)
  {
    __28__TUSoundPlayer_stopPlaying__block_invoke_cold_1();
  }

  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) soundID];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Calling AudioServicesStopSystemSound with soundID=%d", v6, 8u);
  }

  result = (TUSoundPlayerInfiniteIterations_block_invoke_2__AudioServicesStopSystemSound)([*(a1 + 32) soundID], 1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *__28__TUSoundPlayer_stopPlaying__block_invoke_2()
{
  result = CUTWeakLinkSymbol();
  TUSoundPlayerInfiniteIterations_block_invoke_2__AudioServicesStopSystemSound = result;
  return result;
}

uint64_t __28__TUSoundPlayer_stopPlaying__block_invoke_30(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isCurrentPlaying];
  if (result)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) soundID];
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Stop playing current soundID: %d", v6, 8u);
    }

    result = [*(a1 + 32) setIsCurrentPlaying:0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"TUSoundPlayer.m" lineNumber:79 description:{@"Failed to weak link string named %s", "kAudioServicesPlaySystemSoundOptionLoopKey"}];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_5(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"TUSoundPlayer.m" lineNumber:89 description:{@"Failed to weak link string named %s", "kAudioServicesPlaySystemSoundOptionFlagsKey"}];

  *a3 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey;
}

@end