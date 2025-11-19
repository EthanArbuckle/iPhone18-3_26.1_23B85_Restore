@interface TLAlertPairedWatchController
- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (TLAlertPairedWatchController)init;
- (void)_didCompletePlaybackForAlertWithContext:(id)a3;
- (void)_playAlertWithContext:(id)a3;
- (void)_processCompletionForAlertWithContext:(id)a3 playbackCompletionType:(int64_t)a4 error:(id)a5;
- (void)_stopPlayingAlertWithContext:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (void)dealloc;
- (void)playAlert:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation TLAlertPairedWatchController

- (TLAlertPairedWatchController)init
{
  v6.receiver = self;
  v6.super_class = TLAlertPairedWatchController;
  v2 = [(TLAlertPairedWatchController *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 assertNotRunningOnAudioQueue];
  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:&__block_literal_global_8];

  v5.receiver = self;
  v5.super_class = TLAlertPairedWatchController;
  [(TLAlertPairedWatchController *)&v5 dealloc];
}

- (void)playAlert:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = [[TLAlertPairedWatchPlaybackContext alloc] initWithAlert:v7 completionHandler:v6];

  os_unfair_lock_lock(&self->_lock);
  v9 = self->_playbackContext;
  objc_storeStrong(&self->_playbackContext, v8);
  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__TLAlertPairedWatchController_playAlert_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E8579038;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v13];
}

uint64_t __64__TLAlertPairedWatchController_playAlert_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _stopPlayingAlertWithContext:v2 withOptions:0 playbackCompletionType:4];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _playAlertWithContext:v4];
}

- (void)_playAlertWithContext:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = [(TLAlertPairedWatchPlaybackContext *)v4 alert];
  v6 = [v5 type];
  v7 = [v5 configuration];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Beginning playback for %{public}@.", buf, 0x16u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v9 = getNACAlertProxyClass_softClass;
  v26 = getNACAlertProxyClass_softClass;
  if (!getNACAlertProxyClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNACAlertProxyClass_block_invoke;
    v28 = &unk_1E8578D30;
    v29 = &v23;
    __getNACAlertProxyClass_block_invoke(buf);
    v9 = v24[3];
  }

  v10 = v9;
  _Block_object_dispose(&v23, 8);
  v11 = [v9 alertProxyWithConfiguration:v7];
  [(TLAlertPairedWatchPlaybackContext *)v4 setAlertProxy:v11];
  v12 = TLLogPlayback();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TLAlertPairedWatchController *)self _playAlertWithContext:v13];
    }

    os_unfair_lock_lock(&self->_lock);
    playbackContext = self->_playbackContext;
    if (playbackContext == v4)
    {
      self->_playbackContext = 0;

      v20 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to create alert proxy using NanoAudioControl."];
      os_unfair_lock_unlock(&self->_lock);
      [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:v4 playbackCompletionType:5 error:v20];

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Created NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_playbackContext != v4)
  {
LABEL_21:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_22;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = TLLogPlayback();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Will call -play on NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  [v11 play];
  v15 = TLLogPlayback();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Did call -play on NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  if (([v7 shouldRepeat] & 1) == 0)
  {
    if (v6 == 1)
    {
      v16 = 4000000000;
    }

    else
    {
      v16 = 2000000000;
    }

    v17 = dispatch_time(0, v16);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__TLAlertPairedWatchController__playAlertWithContext___block_invoke;
    v21[3] = &unk_1E8578900;
    v21[4] = self;
    v22 = v4;
    dispatch_after(v17, MEMORY[0x1E69E96A0], v21);
  }

LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_didCompletePlaybackForAlertWithContext:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playbackContext = self->_playbackContext;
  if (playbackContext == v5)
  {
    self->_playbackContext = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:v5 playbackCompletionType:0 error:0];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_processCompletionForAlertWithContext:(id)a3 playbackCompletionType:(int64_t)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v10 = [v8 alert];
  v11 = TLLogPlayback();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromTLAlertPlaybackCompletionType(a4);
      v14 = [v9 tl_nonRedundantDescription];
      *buf = 138544130;
      v25 = self;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v13;
      v30 = 2114;
      v31 = v14;
      _os_log_error_impl(&dword_1D9356000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@ and error: %{public}@.", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertPlaybackCompletionType(a4);
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@.", buf, 0x20u);
    goto LABEL_6;
  }

  v15 = [v8 completionHandler];
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__TLAlertPairedWatchController__processCompletionForAlertWithContext_playbackCompletionType_error___block_invoke;
  block[3] = &unk_1E8579850;
  v22 = v15;
  v23 = a4;
  v21 = v9;
  v17 = v9;
  v18 = v15;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_playbackContext;
  playbackContext = self->_playbackContext;
  self->_playbackContext = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    audioQueue = self->_audioQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__TLAlertPairedWatchController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v12[3] = &unk_1E8579878;
    v12[4] = self;
    v13 = v8;
    v14 = v7;
    v15 = a5;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
  }

  return v8 != 0;
}

- (void)_stopPlayingAlertWithContext:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = [v8 alertProxy];
  v11 = TLLogPlayback();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Will call -stop… on NanoAudioControl alert proxy: %{public}@.", &v14, 0x16u);
  }

  [v10 stopWithOptions:v9];
  v12 = TLLogPlayback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Did call -stop… on NanoAudioControl alert proxy: %{public}@.", &v14, 0x16u);
  }

  [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:v8 playbackCompletionType:a5 error:0];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_playAlertWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1D9356000, a2, OS_LOG_TYPE_ERROR, "%{public}@: -_playAlertWithContext: […]: Failed to create NanoAudioControl alert proxy.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end