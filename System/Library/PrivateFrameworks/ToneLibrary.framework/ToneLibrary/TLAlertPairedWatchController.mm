@interface TLAlertPairedWatchController
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (TLAlertPairedWatchController)init;
- (void)_didCompletePlaybackForAlertWithContext:(id)context;
- (void)_playAlertWithContext:(id)context;
- (void)_processCompletionForAlertWithContext:(id)context playbackCompletionType:(int64_t)type error:(id)error;
- (void)_stopPlayingAlertWithContext:(id)context withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)dealloc;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
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

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = [[TLAlertPairedWatchPlaybackContext alloc] initWithAlert:alertCopy completionHandler:handlerCopy];

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
  selfCopy = self;
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

- (void)_playAlertWithContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alert = [(TLAlertPairedWatchPlaybackContext *)contextCopy alert];
  type = [alert type];
  configuration = [alert configuration];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = alert;
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
  v11 = [v9 alertProxyWithConfiguration:configuration];
  [(TLAlertPairedWatchPlaybackContext *)contextCopy setAlertProxy:v11];
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
    if (playbackContext == contextCopy)
    {
      self->_playbackContext = 0;

      v20 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to create alert proxy using NanoAudioControl."];
      os_unfair_lock_unlock(&self->_lock);
      [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:5 error:v20];

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
  if (self->_playbackContext != contextCopy)
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

  if (([configuration shouldRepeat] & 1) == 0)
  {
    if (type == 1)
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
    v22 = contextCopy;
    dispatch_after(v17, MEMORY[0x1E69E96A0], v21);
  }

LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_didCompletePlaybackForAlertWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playbackContext = self->_playbackContext;
  if (playbackContext == contextCopy)
  {
    self->_playbackContext = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:0 error:0];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_processCompletionForAlertWithContext:(id)context playbackCompletionType:(int64_t)type error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  alert = [contextCopy alert];
  v11 = TLLogPlayback();
  v12 = v11;
  if (errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromTLAlertPlaybackCompletionType(type);
      tl_nonRedundantDescription = [errorCopy tl_nonRedundantDescription];
      *buf = 138544130;
      selfCopy2 = self;
      v26 = 2114;
      v27 = alert;
      v28 = 2114;
      v29 = v13;
      v30 = 2114;
      v31 = tl_nonRedundantDescription;
      _os_log_error_impl(&dword_1D9356000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@ and error: %{public}@.", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138543874;
    selfCopy2 = self;
    v26 = 2114;
    v27 = alert;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@.", buf, 0x20u);
    goto LABEL_6;
  }

  completionHandler = [contextCopy completionHandler];
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__TLAlertPairedWatchController__processCompletionForAlertWithContext_playbackCompletionType_error___block_invoke;
  block[3] = &unk_1E8579850;
  v22 = completionHandler;
  typeCopy = type;
  v21 = errorCopy;
  v17 = errorCopy;
  v18 = completionHandler;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  optionsCopy = options;
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
    v14 = optionsCopy;
    typeCopy = type;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
  }

  return v8 != 0;
}

- (void)_stopPlayingAlertWithContext:(id)context withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alertProxy = [contextCopy alertProxy];
  v11 = TLLogPlayback();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = alertProxy;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Will call -stop… on NanoAudioControl alert proxy: %{public}@.", &v14, 0x16u);
  }

  [alertProxy stopWithOptions:optionsCopy];
  v12 = TLLogPlayback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = alertProxy;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Did call -stop… on NanoAudioControl alert proxy: %{public}@.", &v14, 0x16u);
  }

  [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:type error:0];
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