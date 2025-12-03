@interface SCDANotifyObserver
- (SCDANotifyObserver)initWithName:(id)name options:(unint64_t)options queue:(id)queue delegate:(id)delegate;
- (id)description;
- (unint64_t)state;
- (void)_invalidate;
- (void)_updateStateWithToken:(int)token;
- (void)dealloc;
- (void)getStateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation SCDANotifyObserver

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SCDANotifyObserver_invalidate__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  registrationToken = self->_registrationToken;
  if (registrationToken != -1)
  {
    notify_cancel(registrationToken);
    self->_registrationToken = -1;
  }

  objc_storeWeak(&self->_delegate, 0);
}

- (void)dealloc
{
  [(SCDANotifyObserver *)self _invalidate];
  v3.receiver = self;
  v3.super_class = SCDANotifyObserver;
  [(SCDANotifyObserver *)&v3 dealloc];
}

- (void)_updateStateWithToken:(int)token
{
  state64 = 0;
  if (token != -1 && !notify_get_state(token, &state64) || (registrationToken = self->_registrationToken, registrationToken != -1) && !notify_get_state(registrationToken, &state64))
  {
    state = self->_state;
    v6 = state64;
    if (state != state64)
    {
      self->_state = state64;
      if ((*&self->_flags & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained notifyObserver:self didChangeStateFrom:state to:v6];
      }
    }
  }
}

- (void)getStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (self->_options)
    {
      queue = self->_queue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__SCDANotifyObserver_getStateWithCompletion___block_invoke;
      v7[3] = &unk_1E85D32E8;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(queue, v7);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (unint64_t)state
{
  v2 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self->_options)
  {
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__SCDANotifyObserver_state__block_invoke;
    v5[3] = &unk_1E85D3878;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

- (SCDANotifyObserver)initWithName:(id)name options:(unint64_t)options queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = SCDANotifyObserver;
  v13 = [(SCDANotifyObserver *)&v26 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v13->_options = options;
    objc_storeStrong(&v13->_queue, queue);
    v16 = objc_storeWeak(&v13->_delegate, delegateCopy);
    *&v13->_flags = *&v13->_flags & 0xFE | objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v13->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xFD | v18;

    objc_initWeak(&location, v13);
    queue = v13->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SCDANotifyObserver_initWithName_options_queue_delegate___block_invoke;
    block[3] = &unk_1E85D2988;
    v22 = nameCopy;
    v23 = v13;
    objc_copyWeak(v24, &location);
    v24[1] = options;
    dispatch_async(queue, block);
    objc_destroyWeak(v24);

    objc_destroyWeak(&location);
  }

  return v13;
}

void __58__SCDANotifyObserver_initWithName_options_queue_delegate___block_invoke(uint64_t a1)
{
  out_token = -1;
  v2 = [*(a1 + 32) UTF8String];
  v3 = *(*(a1 + 40) + 8);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __58__SCDANotifyObserver_initWithName_options_queue_delegate___block_invoke_2;
  v7 = &unk_1E85D2960;
  objc_copyWeak(&v8, (a1 + 48));
  if (!notify_register_dispatch(v2, &out_token, v3, &v4))
  {
    *(*(a1 + 40) + 32) = out_token;
  }

  if (*(a1 + 56))
  {
    [*(a1 + 40) _updateStateWithToken:{out_token, v4, v5, v6, v7}];
  }

  objc_destroyWeak(&v8);
}

void __58__SCDANotifyObserver_initWithName_options_queue_delegate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNotificationWithToken:a2];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = SCDANotifyObserver;
  v4 = [(SCDANotifyObserver *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {name = %@}", v4, self->_name];

  return v5;
}

@end