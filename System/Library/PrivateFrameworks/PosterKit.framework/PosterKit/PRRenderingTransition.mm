@interface PRRenderingTransition
- (PRRenderingTransition)init;
- (PRRenderingTransition)initWithType:(id)a3 initialStateMetadata:(id)a4 finalStateMetadata:(id)a5;
- (id)_observers;
- (id)description;
- (void)addObserver:(id)a3;
- (void)begin;
- (void)dealloc;
- (void)end;
- (void)removeObserver:(id)a3;
- (void)setCurrentStateMetadata:(id)a3;
@end

@implementation PRRenderingTransition

- (PRRenderingTransition)init
{
  [(PRRenderingTransition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRRenderingTransition)initWithType:(id)a3 initialStateMetadata:(id)a4 finalStateMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = PRRenderingTransition;
  v12 = [(PRRenderingTransition *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    v14 = [v10 copy];
    v15 = v14;
    v16 = MEMORY[0x1E695E0F8];
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v13->_initialStateMetadata, v17);

    objc_storeStrong(&v13->_currentStateMetadata, v13->_initialStateMetadata);
    v18 = [v11 copy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    objc_storeStrong(&v13->_finalStateMetadata, v20);

    v21 = objc_opt_new();
    lock = v13->_lock;
    v13->_lock = v21;

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = v23;
  }

  return v13;
}

- (void)setCurrentStateMetadata:(id)a3
{
  v4 = [a3 copy];
  currentStateMetadata = self->_currentStateMetadata;
  self->_currentStateMetadata = v4;

  v6 = [(PRRenderingTransition *)self _observers];
  v7 = [v6 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PRRenderingTransition_setCurrentStateMetadata___block_invoke;
  v8[3] = &unk_1E7843470;
  v8[4] = self;
  [v7 bs_each:v8];
}

- (void)begin
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = 138543874;
  v7 = v5;
  v8 = 2050;
  v9 = a1;
  v10 = 2114;
  v11 = a1;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> PRRenderingEvent %{public}@ has already begun.", &v6, 0x20u);
}

- (void)end
{
  v3 = [(PRRenderingTransition *)self _observers];
  v4 = [v3 allObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__PRRenderingTransition_end__block_invoke;
  v6[3] = &unk_1E7843470;
  v6[4] = self;
  [v4 bs_each:v6];

  [(NSHashTable *)self->_lock_observers removeAllObjects];
  lock_observers = self->_lock_observers;
  self->_lock_observers = 0;
}

- (void)addObserver:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(PFOSUnfairLock *)lock lock];
  [(NSHashTable *)self->_lock_observers addObject:v5];

  v6 = self->_lock;

  [(PFOSUnfairLock *)v6 unlock];
}

- (void)removeObserver:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(PFOSUnfairLock *)lock lock];
  [(NSHashTable *)self->_lock_observers removeObject:v5];

  v6 = self->_lock;

  [(PFOSUnfairLock *)v6 unlock];
}

- (id)_observers
{
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = self->_lock_observers;
  [(PFOSUnfairLock *)self->_lock unlock];

  return v3;
}

- (void)dealloc
{
  [(PRRenderingTransition *)self end];
  v3.receiver = self;
  v3.super_class = PRRenderingTransition;
  [(PRRenderingTransition *)&v3 dealloc];
}

- (id)description
{
  v3 = [(PRRenderingTransition *)self _observers];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@:%p, type: %@, initialStateMetadata: %@, currentStateMetadata: %@, finalStateMetadata: %@, observers: %@>", v6, self, self->_type, self->_initialStateMetadata, self->_currentStateMetadata, self->_finalStateMetadata, v3];

  return v7;
}

@end