@interface TUCallSoundPlayer
- (BOOL)attemptToPlayDescriptor:(id)a3 completion:(id)a4;
- (BOOL)attemptToPlaySoundType:(int64_t)a3 forCall:(id)a4 completion:(id)a5;
- (BOOL)isPlaying;
- (TUCallSoundPlayer)init;
- (void)dealloc;
- (void)stopPlaying;
@end

@implementation TUCallSoundPlayer

- (void)stopPlaying
{
  v3 = [(TUCallSoundPlayer *)self player];
  [v3 stopPlaying];

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

- (BOOL)attemptToPlaySoundType:(int64_t)a3 forCall:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [[TUCallSoundPlayerDescriptor alloc] initWithSoundType:a3 call:v8];
  if (v10)
  {
    v11 = [(TUCallSoundPlayer *)self attemptToPlayDescriptor:v10 completion:v9];
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = a3;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Not playing sound since no valid sound descriptor was returned for type=%lu call=%@", &v15, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)attemptToPlayDescriptor:(id)a3 completion:(id)a4
{
  *&v36[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[TUCallSoundPlayer isPlaying](self, "isPlaying") && (v8 = [v6 soundType], v8 == -[TUCallSoundPlayer currentlyPlayingSoundType](self, "currentlyPlayingSoundType")))
  {
    v9 = 0;
  }

  else
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = v6;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Playing %@", buf, 0xCu);
    }

    if ([v6 audioPlayingWarmupNeeded])
    {
      v11 = CUTWeakLinkClass();
      v12 = TUDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 hasActiveAudioSession];
        *buf = 67109378;
        v36[0] = v13;
        LOWORD(v36[1]) = 2112;
        *(&v36[1] + 2) = v6;
        _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] audio stack ready: %d for %@", buf, 0x12u);
      }

      if (([v11 hasActiveAudioSession] & 1) == 0 && objc_msgSend(v6, "soundType") == 1)
      {
        v14 = dispatch_semaphore_create(0);
        v15 = [MEMORY[0x1E696AD88] defaultCenter];
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __56__TUCallSoundPlayer_attemptToPlayDescriptor_completion___block_invoke;
        v32 = &unk_1E7426808;
        v16 = v6;
        v33 = v16;
        v17 = v14;
        v34 = v17;
        v18 = [v15 addObserverForName:@"TUCallAudioStackReadyNotification" object:0 queue:0 usingBlock:&v29];

        v19 = TUDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v36 = v16;
          _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }

        v20 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v17, v20);
        v21 = [MEMORY[0x1E696AD88] defaultCenter];
        [v21 removeObserver:v18];

        v22 = TUDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v36 = v16;
          _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] finished waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }
      }
    }

    v23 = [(TUCallSoundPlayer *)self player];
    v24 = [v6 sound];
    v25 = [v24 unsignedIntValue];
    v26 = [v6 iterations];
    [v6 pauseDuration];
    [v23 playSound:v25 iterations:v26 pauseDurationBetweenIterations:v7 completion:?];

    -[TUCallSoundPlayer setCurrentlyPlayingSoundType:](self, "setCurrentlyPlayingSoundType:", [v6 soundType]);
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
  v2 = [(TUCallSoundPlayer *)self player];
  v3 = [v2 isPlaying];

  return v3;
}

@end