@interface PLTimedDispatchGroup
- (PLTimedDispatchGroup)initWithQueue:(id)queue name:(id)name defaultTimeout:(double)timeout;
- (id)defaultPreferredResult;
- (id)description;
- (id)enterWithTimeout:(double)timeout name:(id)name;
- (void)notify:(id)notify;
@end

@implementation PLTimedDispatchGroup

- (void)notify:(id)notify
{
  notifyCopy = notify;
  v5 = +[PLConcurrencyLimiter sharedLimiter];
  [v5 groupNotify:self->_group queue:self->_queue block:notifyCopy];
}

- (id)defaultPreferredResult
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __46__PLTimedDispatchGroup_defaultPreferredResult__block_invoke;
  v25 = &unk_1E75787F8;
  selfCopy = self;
  v2 = PLSafeResultWithUnfairLock();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  result3 = 0;
  result = 0;
  v7 = *v19;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      if ([v9 didTimeout])
      {
        if (!result)
        {
          result = [v9 result];
        }
      }

      else
      {
        result2 = [v9 result];
        isFailure = [result2 isFailure];

        if (isFailure)
        {
          v12 = result3 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          result3 = [v9 result];
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v18 objects:v27 count:16];
  }

  while (v4);
  v13 = result3;
  if (result3 || (v13 = result) != 0)
  {
    v14 = v13;
  }

  else
  {
LABEL_20:
    v15 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v15 successWithResult:null];

    result3 = 0;
    result = 0;
  }

  return v14;
}

- (id)enterWithTimeout:(double)timeout name:(id)name
{
  nameCopy = name;
  v7 = [[PLTimedDispatchGroupEnterSession alloc] initWithGroup:self->_group queue:self->_queue timeout:nameCopy name:timeout];

  [(PLTimedDispatchGroupEnterSession *)v7 enter];
  v10 = v7;
  PLSafeRunWithUnfairLock();
  v8 = v10;

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, self->_name];

  return v6;
}

- (PLTimedDispatchGroup)initWithQueue:(id)queue name:(id)name defaultTimeout:(double)timeout
{
  queueCopy = queue;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PLTimedDispatchGroup;
  v11 = [(PLTimedDispatchGroup *)&v19 init];
  if (v11)
  {
    v12 = dispatch_group_create();
    group = v11->_group;
    v11->_group = v12;

    objc_storeStrong(&v11->_queue, queue);
    v11->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_sessions = v11->_lock_sessions;
    v11->_lock_sessions = v14;

    v16 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v16;

    v11->_defaultTimeout = timeout;
  }

  return v11;
}

@end