@interface _UICarPlaySession
+ (id)sharedInstance;
- (os_unfair_lock_s)currentSession;
- (void)enqueuePendingSessionAccessWithTimeout:(double)a3 completion:;
- (void)getCurrentSessionWithTimeout:(double)a3 completion:;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
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
  if (a1)
  {
    v2 = a1;
    os_unfair_lock_lock(a1 + 2);
    if ((v2[6]._os_unfair_lock_opaque & 1) == 0)
    {
      [*&v2[4]._os_unfair_lock_opaque waitForSessionInitialization];
      LOBYTE(v2[6]._os_unfair_lock_opaque) = 1;
    }

    os_unfair_lock_unlock(v2 + 2);
    a1 = [*&v2[4]._os_unfair_lock_opaque currentSession];
    v1 = vars8;
  }

  return a1;
}

- (void)getCurrentSessionWithTimeout:(double)a3 completion:
{
  v6 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v5 = [*(a1 + 16) currentSession];
    if (v5)
    {
      os_unfair_lock_unlock((a1 + 8));
      v6[2](v6, v5);
    }

    else
    {
      [(_UICarPlaySession *)a1 enqueuePendingSessionAccessWithTimeout:v6 completion:a3];
      os_unfair_lock_unlock((a1 + 8));
    }
  }
}

- (void)enqueuePendingSessionAccessWithTimeout:(double)a3 completion:
{
  v5 = a2;
  if (a1)
  {
    v6 = [[_UICarPlaySessionAccessRequest alloc] initWithTimeout:v5 completion:a3];
    objc_initWeak(&location, v6);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71___UICarPlaySession_enqueuePendingSessionAccessWithTimeout_completion___block_invoke;
    v7[3] = &unk_1E70F2F80;
    objc_copyWeak(&v8, &location);
    v7[4] = a1;
    [(_UICarPlaySessionAccessRequest *)v6 setTimeoutHandler:v7];
    [*(a1 + 32) addObject:v6];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___UICarPlaySession_sessionDidConnect___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)sessionDidDisconnect:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UICarPlaySession_sessionDidDisconnect___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end