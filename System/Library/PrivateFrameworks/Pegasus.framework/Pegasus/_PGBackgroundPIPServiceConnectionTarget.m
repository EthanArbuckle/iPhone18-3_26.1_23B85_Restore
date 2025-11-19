@interface _PGBackgroundPIPServiceConnectionTarget
- (BOOL)isConnectionActive;
- (NSString)activitySessionIdentifier;
- (NSString)bundleIdentifier;
- (NSString)description;
- (_PGBackgroundPIPServiceConnectionTarget)initWithConnection:(id)a3 delegate:(id)a4;
- (_PGBackgroundPIPServiceConnectionTargetDelegate)delegate;
- (int64_t)state;
- (void)grantAuthorizationForActivitySessionWithIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (void)transitionToStateIfPossible:(int64_t)a3;
@end

@implementation _PGBackgroundPIPServiceConnectionTarget

- (_PGBackgroundPIPServiceConnectionTarget)initWithConnection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PGBackgroundPIPServiceConnectionTarget;
  v9 = [(_PGBackgroundPIPServiceConnectionTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (NSString)activitySessionIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_activitySessionIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)bundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_bundleIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  os_unfair_lock_unlock(&self->_lock);
  return lock_state;
}

- (void)transitionToStateIfPossible:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromPGBackgroundPIPAuthorizationState(a3);
    v12 = 136315650;
    v13 = "[_PGBackgroundPIPServiceConnectionTarget transitionToStateIfPossible:]";
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s requestedState: %{public}@ for %{public}@", &v12, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state >= a3)
  {
    os_unfair_lock_unlock(&self->_lock);
    if (lock_state <= a3)
    {
      return;
    }

    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromPGBackgroundPIPAuthorizationState(a3);
      v12 = 136315650;
      v13 = "[_PGBackgroundPIPServiceConnectionTarget transitionToStateIfPossible:]";
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = self;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s Refusing requestedState: %{public}@ for %{public}@", &v12, 0x20u);
    }
  }

  else
  {
    self->_lock_state = a3;
    os_unfair_lock_unlock(&self->_lock);
    if (a3 == 5)
    {
      if ([(_PGBackgroundPIPServiceConnectionTarget *)self isConnectionActive])
      {
        [(BSServiceConnection *)self->_connection invalidate];
      }

      v8 = [(_PGBackgroundPIPServiceConnectionTarget *)self delegate];
      [v8 backgroundPIPTargetDidInvalidate:self];
    }

    else
    {
      v10 = [(BSServiceConnection *)self->_connection remoteTarget];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v10 transitionToState:v11];

      if (a3 != 1)
      {
        return;
      }

      v8 = [(_PGBackgroundPIPServiceConnectionTarget *)self delegate];
      [v8 backgroundPIPTargetRequestsAuthorization:self];
    }
  }
}

- (BOOL)isConnectionActive
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  v3 = v2 != 0;

  return v3;
}

- (void)grantAuthorizationForActivitySessionWithIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v8 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_state)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_activitySessionIdentifier, a3);
    objc_storeStrong(&self->_lock_bundleIdentifier, a4);
    os_unfair_lock_unlock(&self->_lock);
    [(_PGBackgroundPIPServiceConnectionTarget *)self transitionToStateIfPossible:1];
  }
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v4 = self->_lock_activitySessionIdentifier;
  v5 = NSStringFromPGBackgroundPIPAuthorizationState(lock_state);
  v6 = self->_lock_bundleIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  v7 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _PGBackgroundPIPServiceConnectionTarget;
  v8 = [(_PGBackgroundPIPServiceConnectionTarget *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ cxn: %@ activitySessionIdentifier: %@ bundleId: %@ state: %@", v8, self->_connection, v4, v6, v5];

  return v9;
}

- (_PGBackgroundPIPServiceConnectionTargetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end