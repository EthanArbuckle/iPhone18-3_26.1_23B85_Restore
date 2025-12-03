@interface WFScreenOnObserver
- (WFScreenOnObserver)init;
- (WFScreenOnObserverDelegate)delegate;
- (void)start;
- (void)stateChanged:(BOOL)changed;
@end

@implementation WFScreenOnObserver

- (WFScreenOnObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stateChanged:(BOOL)changed
{
  changedCopy = changed;
  v15 = *MEMORY[0x1E69E9840];
  screenOn = [(WFScreenOnObserver *)self screenOn];
  v6 = getWFWFScreenOnObserverLogObject();
  delegate = v6;
  if (screenOn == changedCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[WFScreenOnObserver stateChanged:]";
      v11 = 1024;
      v12 = screenOn;
      v13 = 1024;
      v14 = changedCopy;
      _os_log_impl(&dword_1CA256000, delegate, OS_LOG_TYPE_DEFAULT, "%s previous state (%i) and new state (%i) match, not notifying", &v9, 0x18u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[WFScreenOnObserver stateChanged:]";
      v11 = 1024;
      v12 = screenOn;
      v13 = 1024;
      v14 = changedCopy;
      _os_log_impl(&dword_1CA256000, delegate, OS_LOG_TYPE_INFO, "%s screen on state transitioned from %i to %i", &v9, 0x18u);
    }

    self->_screenOn = changedCopy;
    delegate = [(WFScreenOnObserver *)self delegate];
    [delegate screenOnStateDidChange:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  if (self->_token == -1)
  {
    handler[5] = v5;
    handler[6] = v4;
    handler[9] = v2;
    handler[10] = v3;
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__WFScreenOnObserver_start__block_invoke;
    handler[3] = &unk_1E83756C0;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_token, queue, handler);
    v8 = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__WFScreenOnObserver_start__block_invoke_2;
    v9[3] = &unk_1E837FA70;
    v9[4] = self;
    dispatch_async(v8, v9);
  }
}

uint64_t __27__WFScreenOnObserver_start__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) stateChanged:state64 == 0];
}

uint64_t __27__WFScreenOnObserver_start__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 12);
  state64 = 0;
  notify_get_state(v2, &state64);
  return [*(a1 + 32) stateChanged:state64 == 0];
}

- (WFScreenOnObserver)init
{
  v9.receiver = self;
  v9.super_class = WFScreenOnObserver;
  v2 = [(WFScreenOnObserver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_token = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.shortcuts.WFScreenOnObserver", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = v3;
  }

  return v3;
}

@end