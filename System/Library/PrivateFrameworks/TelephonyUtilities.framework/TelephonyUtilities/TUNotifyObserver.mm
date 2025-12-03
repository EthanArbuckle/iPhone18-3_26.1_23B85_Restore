@interface TUNotifyObserver
- (BOOL)isObserving;
- (TUNotifyObserver)initWithNotificationName:(id)name queue:(id)queue callback:(id)callback;
- (id)callback;
- (unint64_t)state;
- (void)_endObserving;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)setCallback:(id)callback;
@end

@implementation TUNotifyObserver

void __34__TUNotifyObserver_beginObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained callback];

  if (v1)
  {
    v2 = [WeakRetained callback];
    v2[2]();
  }
}

- (id)callback
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_callback);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (TUNotifyObserver)initWithNotificationName:(id)name queue:(id)queue callback:(id)callback
{
  nameCopy = name;
  queueCopy = queue;
  callbackCopy = callback;
  v18.receiver = self;
  v18.super_class = TUNotifyObserver;
  v11 = [(TUNotifyObserver *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [nameCopy copy];
    notificationName = v12->_notificationName;
    v12->_notificationName = v13;

    objc_storeStrong(&v12->_queue, queue);
    v15 = [callbackCopy copy];
    callback = v12->_callback;
    v12->_callback = v15;
  }

  return v12;
}

- (void)dealloc
{
  [(TUNotifyObserver *)self _endObserving];
  v3.receiver = self;
  v3.super_class = TUNotifyObserver;
  [(TUNotifyObserver *)&v3 dealloc];
}

- (void)setCallback:(id)callback
{
  callbackCopy = callback;
  os_unfair_lock_lock(&self->_lock);
  if (self->_callback != callbackCopy)
  {
    v4 = [callbackCopy copy];
    callback = self->_callback;
    self->_callback = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isObserving
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(TUNotifyObserver *)self token]> 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state64 = 0;
  notify_get_state([(TUNotifyObserver *)self token], &state64);
  v3 = state64;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)beginObserving
{
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  notificationName = [(TUNotifyObserver *)self notificationName];
  uTF8String = [notificationName UTF8String];
  queue = [(TUNotifyObserver *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__TUNotifyObserver_beginObserving__block_invoke;
  v6[3] = &unk_1E7424C60;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(uTF8String, &self->_token, queue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)endObserving
{
  os_unfair_lock_lock(&self->_lock);
  [(TUNotifyObserver *)self _endObserving];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_endObserving
{
  notify_cancel([(TUNotifyObserver *)self token]);

  [(TUNotifyObserver *)self setToken:0];
}

@end