@interface _PASNotificationTracker
- (BOOL)_deregisterHandlerWithToken:(id)a3 waitOnPending:(BOOL)a4;
- (BOOL)deregisterHandlerAsyncWithToken:(id)a3;
- (BOOL)deregisterHandlerWithToken:(id)a3;
- (_PASNotificationTracker)init;
- (id)registerWithQueue:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)issueNotificationAsyncWithContext:(id)a3 callback:(id)a4;
@end

@implementation _PASNotificationTracker

- (_PASNotificationTracker)init
{
  v7.receiver = self;
  v7.super_class = _PASNotificationTracker;
  v2 = [(_PASNotificationTracker *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v3->_nextNotificationToken = 1;
    v4 = objc_opt_new();
    observers = v3->_observers;
    v3->_observers = v4;
  }

  return v3;
}

- (void)issueNotificationAsyncWithContext:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  pthread_mutex_lock(&self->_lock);
  observers = self->_observers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70___PASNotificationTracker_issueNotificationAsyncWithContext_callback___block_invoke;
  v13[3] = &unk_1E77F1468;
  v10 = v8;
  v14 = v10;
  v15 = v6;
  v11 = v6;
  [(NSMutableDictionary *)observers enumerateKeysAndObjectsUsingBlock:v13];
  pthread_mutex_unlock(&self->_lock);
  if (v7)
  {
    v12 = dispatch_get_global_queue(17, 0);
    dispatch_group_notify(v10, v12, v7);
  }
}

- (BOOL)deregisterHandlerAsyncWithToken:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_PASNotificationTracker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v6 = [(_PASNotificationTracker *)self _deregisterHandlerWithToken:v5 waitOnPending:0];

  return v6;
}

- (BOOL)deregisterHandlerWithToken:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_PASNotificationTracker.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v6 = [(_PASNotificationTracker *)self _deregisterHandlerWithToken:v5 waitOnPending:1];

  return v6;
}

- (BOOL)_deregisterHandlerWithToken:(id)a3 waitOnPending:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "token")}];
  pthread_mutex_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_observers removeObjectForKey:v6];
  pthread_mutex_unlock(&self->_lock);
  if (v7)
  {
    atomic_store(1u, v7 + 8);
    if (v4)
    {
      v8 = [v7 group];
      dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return v7 != 0;
}

- (id)registerWithQueue:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_PASNotificationTracker.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"_PASNotificationTracker.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v10 = objc_opt_new();
  [v10 setQueue:v7];
  v11 = dispatch_group_create();
  [v10 setGroup:v11];

  [v10 setHandler:v9];
  atomic_store(0, v10 + 8);
  pthread_mutex_lock(&self->_lock);
  nextNotificationToken = self->_nextNotificationToken;
  observers = self->_observers;
  self->_nextNotificationToken = nextNotificationToken + 1;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:nextNotificationToken];
  [(NSMutableDictionary *)observers setObject:v10 forKeyedSubscript:v14];

  pthread_mutex_unlock(&self->_lock);
  v15 = objc_opt_new();
  [v15 setToken:nextNotificationToken];

  return v15;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = _PASNotificationTracker;
  [(_PASNotificationTracker *)&v3 dealloc];
}

@end