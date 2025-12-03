@interface STKUserEventMonitor
- (STKUserEventMonitor)init;
- (STKUserEventMonitorDelegate)delegate;
- (id)_initWithAttentionAwarenessClient:(id)client;
- (void)_queue_handleAttentionAwarenessEvent:(id)event;
- (void)_resume;
- (void)_suspend;
- (void)dealloc;
- (void)invalidate;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation STKUserEventMonitor

- (id)_initWithAttentionAwarenessClient:(id)client
{
  clientCopy = client;
  if (!clientCopy)
  {
    [(STKUserEventMonitor *)a2 _initWithAttentionAwarenessClient:?];
  }

  v18.receiver = self;
  v18.super_class = STKUserEventMonitor;
  v7 = [(STKUserEventMonitor *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_attentionAwarenessClient, client);
    v9 = dispatch_queue_create("com.apple.stk.AttentionAwareQueue", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CEF768]);
    [v11 setEventMask:14];
    [v11 setIdentifier:@"SIMToolkit"];
    [v11 setAttentionLostTimeout:0.01];
    [(AWAttentionAwarenessClient *)v8->_attentionAwarenessClient setConfiguration:v11 shouldReset:1];
    objc_initWeak(&location, v8);
    attentionAwarenessClient = v8->_attentionAwarenessClient;
    v13 = v8->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__STKUserEventMonitor__initWithAttentionAwarenessClient___block_invoke;
    v15[3] = &unk_279B4C7F8;
    objc_copyWeak(&v16, &location);
    [(AWAttentionAwarenessClient *)attentionAwarenessClient setEventHandlerWithQueue:v13 block:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __57__STKUserEventMonitor__initWithAttentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleAttentionAwarenessEvent:v3];
}

- (STKUserEventMonitor)init
{
  v3 = objc_alloc_init(MEMORY[0x277CEF760]);
  v4 = [(STKUserEventMonitor *)self _initWithAttentionAwarenessClient:v3];

  return v4;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"STKUserEventMonitor.m" lineNumber:52 description:@"Monitor must be invalidated before it can deallocate."];
}

- (void)setEnabled:(BOOL)enabled
{
  if (!self->_invalidated && self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(STKUserEventMonitor *)self _resume];
    }

    else
    {
      [(STKUserEventMonitor *)self _suspend];
    }
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalidating attention monitor.", buf, 2u);
    }

    [(STKUserEventMonitor *)self setEnabled:0];
    self->_invalidated = 1;
    objc_storeWeak(&self->_delegate, 0);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__STKUserEventMonitor_invalidate__block_invoke;
    block[3] = &unk_279B4C428;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_queue_handleAttentionAwarenessEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  eventCopy = event;
  BSDispatchQueueAssert();
  LOBYTE(queue) = [eventCopy eventMask];

  if ((queue & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained userEventDidOccur:self];

    attentionAwarenessClient = self->_attentionAwarenessClient;
    v10 = 0;
    LOBYTE(WeakRetained) = [(AWAttentionAwarenessClient *)attentionAwarenessClient resetAttentionLostTimeoutWithError:&v10];
    v8 = v10;
    if ((WeakRetained & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to reset attention lost timeout due to error: %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__STKUserEventMonitor__resume__block_invoke;
  block[3] = &unk_279B4C428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__STKUserEventMonitor__resume__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Resuming attention monitor.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = *(v3 + 40);
  v7 = 0;
  v5 = [v4 resumeWithError:&v7];
  v6 = v7;
  if ((v5 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __30__STKUserEventMonitor__resume__block_invoke_cold_1(v2);
  }
}

- (void)_suspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__STKUserEventMonitor__suspend__block_invoke;
  block[3] = &unk_279B4C428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__STKUserEventMonitor__suspend__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Suspending attention monitor.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = *(v3 + 40);
  v7 = 0;
  v5 = [v4 suspendWithError:&v7];
  v6 = v7;
  if ((v5 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __31__STKUserEventMonitor__suspend__block_invoke_cold_1(v2);
  }
}

- (STKUserEventMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initWithAttentionAwarenessClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKUserEventMonitor.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"awClient"}];
}

void __30__STKUserEventMonitor__resume__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [*(*a1 + 8) identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "attention client %{public}@ cannot resume; error: %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

void __31__STKUserEventMonitor__suspend__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [*(*a1 + 8) identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "attention client %{public}@ cannot suspend; error: %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

@end