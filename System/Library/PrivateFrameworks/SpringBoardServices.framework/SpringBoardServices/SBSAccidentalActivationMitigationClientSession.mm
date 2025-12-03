@interface SBSAccidentalActivationMitigationClientSession
- (SBSAccidentalActivationMitigationClientSession)initWithBundleIdentifier:(id)identifier callOutQueue:(id)queue;
- (int64_t)state;
- (void)activateSessionWithDuration:(double)duration accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name;
- (void)addObserver:(id)observer;
- (void)mitigationSessionServiceClient:(id)client mitigationSessionDidTransitionToState:(int64_t)state;
- (void)removeObserver:(id)observer;
- (void)requestSessionCancellation;
- (void)setState:(int64_t)state;
@end

@implementation SBSAccidentalActivationMitigationClientSession

- (SBSAccidentalActivationMitigationClientSession)initWithBundleIdentifier:(id)identifier callOutQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = SBSAccidentalActivationMitigationClientSession;
  v9 = [(SBSAccidentalActivationMitigationClientSession *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(SBSAccidentalActivationMitigationSessionServiceClient);
    client = v10->_client;
    v10->_client = v11;

    [(SBSAccidentalActivationMitigationSessionServiceClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    objc_storeStrong(&v10->_callOutQueue, queue);
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v4 = BSDispatchQueueAssert();
  if (observerCopy)
  {
    v4 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    if ((v4 & 1) == 0)
    {
      observers = self->_observers;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v7 = self->_observers;
        self->_observers = weakObjectsHashTable;

        observers = self->_observers;
      }

      v4 = [(NSHashTable *)observers addObject:observerCopy];
    }
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssert();
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)activateSessionWithDuration:(double)duration accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  BSDispatchQueueAssert();
  v7 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 2048;
    durationCopy = duration;
    v12 = 2112;
    v13 = nameCopy;
    _os_log_impl(&dword_19169D000, v7, OS_LOG_TYPE_DEFAULT, "%@ activated session with duration: %f and cancellation policy: %@", &v8, 0x20u);
  }

  [(SBSAccidentalActivationMitigationSessionServiceClient *)self->_client activateSessionForBundleIdentifier:self->_bundleIdentifier duration:nameCopy accidentalActivationMitigationSessionCancellationPolicyClassName:duration];
}

- (void)requestSessionCancellation
{
  v7 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v3 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "%@ requested session cancellation", &v5, 0xCu);
  }

  if ([(SBSAccidentalActivationMitigationClientSession *)self state]== 1)
  {
    [(SBSAccidentalActivationMitigationSessionServiceClient *)self->_client requestSessionCancellation];
  }

  else
  {
    v4 = SBLogCameraCaptureAccidentalActivationMitigationSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "%@ is not able to cancel the session because it is not active", &v5, 0xCu);
    }
  }
}

- (void)setState:(int64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_state == state)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_state = state;
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSHashTable *)self->_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            callOutQueue = self->_callOutQueue;
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __59__SBSAccidentalActivationMitigationClientSession_setState___block_invoke;
            v12[3] = &unk_1E735F7F0;
            v12[4] = v10;
            v12[5] = self;
            dispatch_async(callOutQueue, v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  os_unfair_lock_unlock(&self->_lock);
  return lock_state;
}

- (void)mitigationSessionServiceClient:(id)client mitigationSessionDidTransitionToState:(int64_t)state
{
  BSDispatchQueueAssertMain();

  [(SBSAccidentalActivationMitigationClientSession *)self setState:state];
}

@end