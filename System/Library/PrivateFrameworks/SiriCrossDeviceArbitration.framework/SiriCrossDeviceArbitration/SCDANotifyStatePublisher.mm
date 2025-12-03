@interface SCDANotifyStatePublisher
- (BOOL)_getState:(unint64_t *)state withToken:(int)token;
- (BOOL)_setState:(unint64_t)state withToken:(int)token;
- (SCDANotifyStatePublisher)initWithName:(id)name queue:(id)queue;
- (void)_notifyWithState:(unint64_t)state;
- (void)_register;
- (void)_unregister;
- (void)dealloc;
- (void)invalidate;
- (void)publishState:(unint64_t)state;
- (void)publishStateWithBlock:(id)block;
@end

@implementation SCDANotifyStatePublisher

- (void)_unregister
{
  v11 = *MEMORY[0x1E69E9840];
  registrationToken = self->_registrationToken;
  if (registrationToken != -1)
  {
    notify_cancel(registrationToken);
    self->_registrationToken = -1;
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      name = self->_name;
      v7 = 136315394;
      v8 = "[SCDANotifyStatePublisher _unregister]";
      v9 = 2080;
      v10 = name;
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s Registration token of %s is invalidated.", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_register
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_registrationToken == -1)
  {
    out_token = -1;
    v3 = notify_register_check(self->_name, &out_token);
    if (v3)
    {
      v4 = v3;
      v5 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        *buf = 136315650;
        v13 = "[SCDANotifyStatePublisher _register]";
        v14 = 2080;
        v15 = name;
        v16 = 1024;
        v17 = v4;
        _os_log_error_impl(&dword_1DA758000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get registration token of %s (status = %u).", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = out_token;
      self->_registrationToken = out_token;
      v8 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v9 = self->_name;
        *buf = 136315650;
        v13 = "[SCDANotifyStatePublisher _register]";
        v14 = 2080;
        v15 = v9;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s Registration token of %s is %d.", buf, 0x1Cu);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_getState:(unint64_t *)state withToken:(int)token
{
  v23 = *MEMORY[0x1E69E9840];
  if (state)
  {
    *state = 0;
    state64 = 0;
    state = notify_get_state(token, &state64);
    if (!state)
    {
      *state = state64;
LABEL_7:
      LOBYTE(v10) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    state64 = 0;
    state = notify_get_state(token, &state64);
    if (!state)
    {
      goto LABEL_7;
    }
  }

  stateCopy = state;
  v9 = SCDALogContextCore;
  v10 = os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    name = self->_name;
    *buf = 136315906;
    v16 = "[SCDANotifyStatePublisher _getState:withToken:]";
    v17 = 2080;
    v18 = name;
    v19 = 1024;
    tokenCopy = token;
    v21 = 1024;
    v22 = stateCopy;
    _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s Failed to get state of %s with token %d (status = %u).", buf, 0x22u);
    LOBYTE(v10) = 0;
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_setState:(unint64_t)state withToken:(int)token
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = notify_set_state(token, state);
  if (v7)
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      name = self->_name;
      v12 = 136316162;
      v13 = "[SCDANotifyStatePublisher _setState:withToken:]";
      v14 = 2048;
      stateCopy = state;
      v16 = 2080;
      v17 = name;
      v18 = 1024;
      tokenCopy = token;
      v20 = 1024;
      v21 = v7;
      _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s Failed to set state to %llu of %s with token %d (status = %u).", &v12, 0x2Cu);
    }
  }

  result = v7 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_notifyWithState:(unint64_t)state
{
  if (self->_registrationToken != -1 && [(SCDANotifyStatePublisher *)self _setState:state withToken:?])
  {
    name = self->_name;

    notify_post(name);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SCDANotifyStatePublisher_invalidate__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)publishStateWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SCDANotifyStatePublisher_publishStateWithBlock___block_invoke;
    v7[3] = &unk_1E85D32E8;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

_DWORD *__50__SCDANotifyStatePublisher_publishStateWithBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[6] != -1)
  {
    v3 = 0;
    result = [result _getState:&v3 withToken:?];
    if (result)
    {
      result = (*(*(a1 + 40) + 16))();
      if (result != v3)
      {
        result = [*(a1 + 32) _setState:result withToken:*(*(a1 + 32) + 24)];
        if (result)
        {
          return notify_post(*(*(a1 + 32) + 16));
        }
      }
    }
  }

  return result;
}

- (void)publishState:(unint64_t)state
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SCDANotifyStatePublisher_publishState___block_invoke;
  v4[3] = &unk_1E85D3360;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(queue, v4);
}

- (SCDANotifyStatePublisher)initWithName:(id)name queue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = SCDANotifyStatePublisher;
  v8 = [(SCDANotifyStatePublisher *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = [nameCopy maximumLengthOfBytesUsingEncoding:4];
    v11 = malloc_type_malloc(v10 + 1, 0x2E318B53uLL);
    v9->_name = v11;
    if (([nameCopy getCString:v11 maxLength:v10 + 1 encoding:4] & 1) == 0)
    {
      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[SCDANotifyStatePublisher initWithName:queue:]";
        v21 = 2112;
        v22 = nameCopy;
        _os_log_error_impl(&dword_1DA758000, v12, OS_LOG_TYPE_ERROR, "%s Unable to get C string of name from %@.", buf, 0x16u);
      }
    }

    v9->_registrationToken = -1;
    queue = v9->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SCDANotifyStatePublisher_initWithName_queue___block_invoke;
    block[3] = &unk_1E85D3850;
    v17 = v9;
    dispatch_async(queue, block);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  [(SCDANotifyStatePublisher *)self _unregister];
  name = self->_name;
  if (name)
  {
    free(name);
    self->_name = 0;
  }

  v4.receiver = self;
  v4.super_class = SCDANotifyStatePublisher;
  [(SCDANotifyStatePublisher *)&v4 dealloc];
}

@end