@interface SBAttentionAwarenessClient
- (AWAttentionAwarenessConfiguration)configuration;
- (SBAttentionAwarenessClient)init;
- (SBAttentionAwarenessClientDelegate)delegate;
- (void)_handleAttentionAwarenessEvent:(id)event;
- (void)_resetAttentionLostTimeout;
- (void)_resume;
- (void)_suspend;
- (void)identifier;
- (void)invalidate;
- (void)setAttentionAwarenessClient:(uint64_t)client;
- (void)setConfiguration:(id)configuration shouldReset:(BOOL)reset;
- (void)setEnabled:(BOOL)enabled;
- (void)setIdentifier:(void *)identifier;
- (void)setQueue:(uint64_t)queue;
@end

@implementation SBAttentionAwarenessClient

- (SBAttentionAwarenessClient)init
{
  v13.receiver = self;
  v13.super_class = SBAttentionAwarenessClient;
  v2 = [(SBAttentionAwarenessClient *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEF760]);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = dispatch_queue_create("com.apple.springboard.AttentionAwareQueue", 0);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    dispatch_activate(*(v2 + 5));
    objc_initWeak(&location, v2);
    v7 = *(v2 + 4);
    v8 = *(v2 + 5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SBAttentionAwarenessClient_init__block_invoke;
    v10[3] = &unk_2783A9180;
    objc_copyWeak(&v11, &location);
    [v7 setEventHandlerWithQueue:v8 block:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_resetAttentionLostTimeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBAttentionAwarenessClient__resetAttentionLostTimeout__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SBAttentionAwarenessClient__resume__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__SBAttentionAwarenessClient__resetAttentionLostTimeout__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogIdleTimer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "attention client RESET %{public}@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 32);
  v8 = 0;
  v5 = [v4 resetAttentionLostTimeoutWithError:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__SBAttentionAwarenessClient__resetAttentionLostTimeout__block_invoke_cold_1();
    }
  }
}

- (void)_suspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBAttentionAwarenessClient__suspend__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__SBAttentionAwarenessClient__resetAttentionLostTimeout__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [OUTLINED_FUNCTION_2_25(v0) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __37__SBAttentionAwarenessClient__resume__block_invoke(uint64_t a1)
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

void __38__SBAttentionAwarenessClient__suspend__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogIdleTimer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "attention client SUSPEND %{public}@", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 32);
  v8 = 0;
  v5 = [v4 suspendWithError:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__SBAttentionAwarenessClient__suspend__block_invoke_cold_1();
    }
  }
}

void __34__SBAttentionAwarenessClient_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SBAttentionAwarenessClient_init__block_invoke_2;
  v5[3] = &unk_2783A9CE8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __34__SBAttentionAwarenessClient_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAttentionAwarenessEvent:*(a1 + 32)];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SBAttentionAwarenessClient_invalidate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __40__SBAttentionAwarenessClient_invalidate__block_invoke(uint64_t a1)
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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(SBAttentionAwarenessClient *)self _resume];
    }

    else
    {
      [(SBAttentionAwarenessClient *)self _suspend];
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
  v5[2] = __43__SBAttentionAwarenessClient_configuration__block_invoke;
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
  block[2] = __59__SBAttentionAwarenessClient_setConfiguration_shouldReset___block_invoke;
  block[3] = &unk_2783A97D8;
  block[4] = self;
  v10 = configurationCopy;
  resetCopy = reset;
  v8 = configurationCopy;
  dispatch_sync(queue, block);
}

- (void)_handleAttentionAwarenessEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([eventCopy eventMask])
  {
    v7 = objc_opt_class();
    v8 = eventCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      [v10 attentionLostTimeout];
      v12 = v11;
      v13 = [v10 tag];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        unsignedIntegerValue = [v17 unsignedIntegerValue];
      }

      else
      {
        v19 = SBLogIdleTimer();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SBAttentionAwarenessClient _handleAttentionAwarenessEvent:v10];
        }

        unsignedIntegerValue = 0;
      }

      associatedObject = [v10 associatedObject];
      [WeakRetained client:self attentionLostTimeoutDidExpire:unsignedIntegerValue forConfigurationGeneration:associatedObject withAssociatedObject:v12];
    }

    else
    {
      v17 = SBLogIdleTimer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SBAttentionAwarenessClient _handleAttentionAwarenessEvent:];
      }
    }
  }

  else
  {
    v6 = SBLogIdleTimer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBAttentionAwarenessClient _handleAttentionAwarenessEvent:];
    }

    [WeakRetained clientDidResetForUserAttention:self withEvent:eventCopy];
  }
}

- (SBAttentionAwarenessClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __59__SBAttentionAwarenessClient_setConfiguration_shouldReset___block_invoke(uint64_t a1)
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

- (void)setIdentifier:(void *)identifier
{
  if (identifier)
  {
    OUTLINED_FUNCTION_4_10(identifier, newValue);
  }
}

- (void)identifier
{
  if (self)
  {
    return OUTLINED_FUNCTION_3_22(self, a2);
  }

  return self;
}

- (void)setAttentionAwarenessClient:(uint64_t)client
{
  if (client)
  {
    OUTLINED_FUNCTION_7_0(client, a2);
  }
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    OUTLINED_FUNCTION_6_7(queue, a2);
  }
}

void __40__SBAttentionAwarenessClient_invalidate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [OUTLINED_FUNCTION_2_25(v0) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __37__SBAttentionAwarenessClient__resume__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [OUTLINED_FUNCTION_2_25(v0) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __38__SBAttentionAwarenessClient__suspend__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = [OUTLINED_FUNCTION_2_25(v0) identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_handleAttentionAwarenessEvent:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 tag];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_handleAttentionAwarenessEvent:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  if (v0)
  {
    objc_getProperty(v0, v1, 48, 1);
  }

  OUTLINED_FUNCTION_2_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_handleAttentionAwarenessEvent:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  v6 = *MEMORY[0x277D85DE8];
  if (v1)
  {
    objc_getProperty(v1, v2, 48, 1);
  }

  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "attention event [%{public}@]: %{public}@", v5, 0x16u);
}

@end