@interface SBAttentionAwarenessStreamerClient
- (AWAttentionAwarenessConfiguration)configuration;
- (SBAttentionAwarenessStreamerClient)init;
- (SBAttentionAwarenessStreamerClientDelegate)delegate;
- (void)_handleAttentionAwarenessEvent:(id)event;
- (void)invalidate;
- (void)resume;
- (void)setConfiguration:(id)configuration shouldReset:(BOOL)reset;
@end

@implementation SBAttentionAwarenessStreamerClient

- (SBAttentionAwarenessStreamerClient)init
{
  v15.receiver = self;
  v15.super_class = SBAttentionAwarenessStreamerClient;
  v2 = [(SBAttentionAwarenessStreamerClient *)&v15 init];
  if (v2)
  {
    v3 = +[SBScreenLongevityDomain rootSettings];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = objc_alloc_init(MEMORY[0x277CEF760]);
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    v7 = dispatch_queue_create("com.apple.springboard.AttentionAwareStreamerQueue", 0);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    dispatch_activate(*(v2 + 5));
    objc_initWeak(&location, v2);
    v9 = *(v2 + 4);
    v10 = *(v2 + 5);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__SBAttentionAwarenessStreamerClient_init__block_invoke;
    v12[3] = &unk_2783A9180;
    objc_copyWeak(&v13, &location);
    [v9 setEventStreamerWithQueue:v10 block:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__SBAttentionAwarenessStreamerClient_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SBAttentionAwarenessStreamerClient_init__block_invoke_2;
  v5[3] = &unk_2783A9CE8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __42__SBAttentionAwarenessStreamerClient_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAttentionAwarenessEvent:*(a1 + 32)];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBAttentionAwarenessStreamerClient_invalidate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __48__SBAttentionAwarenessStreamerClient_invalidate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogIdleTimer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "attention client INVALIDATE %{public}@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 32);
  v8 = 0;
  v5 = [v4 invalidateWithError:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__SBAttentionAwarenessClient_invalidate__block_invoke_cold_1();
    }
  }
}

- (AWAttentionAwarenessConfiguration)configuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__90;
  v10 = __Block_byref_object_dispose__90;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBAttentionAwarenessStreamerClient_configuration__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setConfiguration:(id)configuration shouldReset:(BOOL)reset
{
  configurationCopy = configuration;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SBAttentionAwarenessStreamerClient_setConfiguration_shouldReset___block_invoke;
  block[3] = &unk_2783A97D8;
  block[4] = self;
  v10 = configurationCopy;
  resetCopy = reset;
  v8 = configurationCopy;
  dispatch_sync(queue, block);
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBAttentionAwarenessStreamerClient_resume__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__SBAttentionAwarenessStreamerClient_resume__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogIdleTimer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "attention client RESUME %{public}@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 32);
  v8 = 0;
  v5 = [v4 resumeWithError:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__SBAttentionAwarenessClient__resume__block_invoke_cold_1();
    }
  }
}

- (void)_handleAttentionAwarenessEvent:(id)event
{
  eventCopy = event;
  if (([eventCopy eventMask] & 0x80) != 0)
  {
    v4 = objc_opt_class();
    v5 = eventCopy;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      [v7 faceDetectionScore];
      v9 = v8;
      [(SBScreenLongevitySettings *)self->_settings faceDetectionScoreThreshold];
      if (v10 <= v9)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained streamerClientDidResetForUserAttention:self];
      }
    }
  }
}

- (SBAttentionAwarenessStreamerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __67__SBAttentionAwarenessStreamerClient_setConfiguration_shouldReset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v3, v4, 48);
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 32);
  v10 = *(a1 + 48);

  return [v9 setConfiguration:v8 shouldReset:v10];
}

@end