@interface _UICarPlaySession
+ (id)sharedInstance;
- (os_unfair_lock_s)currentSession;
- (void)enqueuePendingSessionAccessWithTimeout:(double)timeout completion:;
- (void)getCurrentSessionWithTimeout:(double)timeout completion:;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation _UICarPlaySession

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED4A08F0 != -1)
  {
    dispatch_once(&qword_1ED4A08F0, &__block_literal_global_514);
  }

  v0 = _MergedGlobals_1278;

  return v0;
}

- (os_unfair_lock_s)currentSession
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 2);
    if ((selfCopy[6]._os_unfair_lock_opaque & 1) == 0)
    {
      [*&selfCopy[4]._os_unfair_lock_opaque waitForSessionInitialization];
      LOBYTE(selfCopy[6]._os_unfair_lock_opaque) = 1;
    }

    os_unfair_lock_unlock(selfCopy + 2);
    self = [*&selfCopy[4]._os_unfair_lock_opaque currentSession];
    v1 = vars8;
  }

  return self;
}

- (void)getCurrentSessionWithTimeout:(double)timeout completion:
{
  v6 = a2;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    currentSession = [*(self + 16) currentSession];
    if (currentSession)
    {
      os_unfair_lock_unlock((self + 8));
      v6[2](v6, currentSession);
    }

    else
    {
      [(_UICarPlaySession *)self enqueuePendingSessionAccessWithTimeout:v6 completion:timeout];
      os_unfair_lock_unlock((self + 8));
    }
  }
}

- (void)enqueuePendingSessionAccessWithTimeout:(double)timeout completion:
{
  v5 = a2;
  if (self)
  {
    v6 = [[_UICarPlaySessionAccessRequest alloc] initWithTimeout:v5 completion:timeout];
    objc_initWeak(&location, v6);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71___UICarPlaySession_enqueuePendingSessionAccessWithTimeout_completion___block_invoke;
    v7[3] = &unk_1E70F2F80;
    objc_copyWeak(&v8, &location);
    v7[4] = self;
    [(_UICarPlaySessionAccessRequest *)v6 setTimeoutHandler:v7];
    [*(self + 32) addObject:v6];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___UICarPlaySession_sessionDidConnect___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = connectCopy;
  v5 = connectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UICarPlaySession_sessionDidDisconnect___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end