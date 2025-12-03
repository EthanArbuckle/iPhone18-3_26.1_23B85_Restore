@interface TUCallSoundPlayer
- (BOOL)attemptToPlayDescriptor:(id)descriptor completion:(id)completion;
- (BOOL)attemptToPlaySoundType:(int64_t)type forCall:(id)call completion:(id)completion;
- (BOOL)isPlaying;
- (TUCallSoundPlayer)init;
- (void)dealloc;
- (void)stopPlaying;
@end

@implementation TUCallSoundPlayer

- (void)stopPlaying
{
  player = [(TUCallSoundPlayer *)self player];
  [player stopPlaying];

  [(TUCallSoundPlayer *)self setCurrentlyPlayingSoundType:0];
}

- (TUCallSoundPlayer)init
{
  v5.receiver = self;
  v5.super_class = TUCallSoundPlayer;
  v2 = [(TUCallSoundPlayer *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUSoundPlayer);
    [(TUCallSoundPlayer *)v2 setPlayer:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "TUCallSoundPlayer dealloc", buf, 2u);
  }

  [(TUCallSoundPlayer *)self stopPlaying];
  v4.receiver = self;
  v4.super_class = TUCallSoundPlayer;
  [(TUCallSoundPlayer *)&v4 dealloc];
}

- (BOOL)attemptToPlaySoundType:(int64_t)type forCall:(id)call completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  callCopy = call;
  completionCopy = completion;
  v10 = [[TUCallSoundPlayerDescriptor alloc] initWithSoundType:type call:callCopy];
  if (v10)
  {
    v11 = [(TUCallSoundPlayer *)self attemptToPlayDescriptor:v10 completion:completionCopy];
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      typeCopy = type;
      v17 = 2112;
      v18 = callCopy;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Not playing sound since no valid sound descriptor was returned for type=%lu call=%@", &v15, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)attemptToPlayDescriptor:(id)descriptor completion:(id)completion
{
  *&v36[5] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  completionCopy = completion;
  if (-[TUCallSoundPlayer isPlaying](self, "isPlaying") && (v8 = [descriptorCopy soundType], v8 == -[TUCallSoundPlayer currentlyPlayingSoundType](self, "currentlyPlayingSoundType")))
  {
    v9 = 0;
  }

  else
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = descriptorCopy;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Playing %@", buf, 0xCu);
    }

    if ([descriptorCopy audioPlayingWarmupNeeded])
    {
      v11 = CUTWeakLinkClass();
      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        hasActiveAudioSession = [v11 hasActiveAudioSession];
        *buf = 67109378;
        v36[0] = hasActiveAudioSession;
        LOWORD(v36[1]) = 2112;
        *(&v36[1] + 2) = descriptorCopy;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] audio stack ready: %d for %@", buf, 0x12u);
      }

      if (([v11 hasActiveAudioSession] & 1) == 0 && objc_msgSend(descriptorCopy, "soundType") == 1)
      {
        v14 = dispatch_semaphore_create(0);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __56__TUCallSoundPlayer_attemptToPlayDescriptor_completion___block_invoke;
        v32 = &unk_1E7426808;
        v16 = descriptorCopy;
        v33 = v16;
        v17 = v14;
        v34 = v17;
        v18 = [defaultCenter addObserverForName:@"TUCallAudioStackReadyNotification" object:0 queue:0 usingBlock:&v29];

        v19 = TUDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v36 = v16;
          _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }

        v20 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v17, v20);
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 removeObserver:v18];

        v22 = TUDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v36 = v16;
          _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] finished waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }
      }
    }

    player = [(TUCallSoundPlayer *)self player];
    sound = [descriptorCopy sound];
    unsignedIntValue = [sound unsignedIntValue];
    iterations = [descriptorCopy iterations];
    [descriptorCopy pauseDuration];
    [player playSound:unsignedIntValue iterations:iterations pauseDurationBetweenIterations:completionCopy completion:?];

    -[TUCallSoundPlayer setCurrentlyPlayingSoundType:](self, "setCurrentlyPlayingSoundType:", [descriptorCopy soundType]);
    v9 = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

intptr_t __56__TUCallSoundPlayer_attemptToPlayDescriptor_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] received notification that AVAudioClient setup has completed for %@", &v6, 0xCu);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isPlaying
{
  player = [(TUCallSoundPlayer *)self player];
  isPlaying = [player isPlaying];

  return isPlaying;
}

@end