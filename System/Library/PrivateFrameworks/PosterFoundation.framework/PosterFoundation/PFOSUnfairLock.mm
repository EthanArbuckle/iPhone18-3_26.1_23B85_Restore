@interface PFOSUnfairLock
- (BOOL)mutateUserInfo:(id)a3;
- (NSDictionary)userInfo;
- (PFOSUnfairLock)init;
- (PFOSUnfairLock)initWithLockIdentifier:(id)a3;
- (id)description;
- (void)dealloc;
- (void)performBlock:(id)a3;
- (void)performBlockWhileCapturingWeak:(id)a3 performBlock:(id)a4;
@end

@implementation PFOSUnfairLock

- (PFOSUnfairLock)init
{
  v11.receiver = self;
  v11.super_class = PFOSUnfairLock;
  v2 = [(PFOSUnfairLock *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    userInfo = v2->_userInfo;
    v2->_userInfo = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"PFOSUnfairLock-", v7];
    lockIdentifier = v2->_lockIdentifier;
    v2->_lockIdentifier = v8;
  }

  return v2;
}

- (PFOSUnfairLock)initWithLockIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PFOSUnfairLock *)self init];
  if (v5 && [v4 length])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PFOSUnfairLock-", v4];
    lockIdentifier = v5->_lockIdentifier;
    v5->_lockIdentifier = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(PFOSUnfairLock *)self assertNotOwner];
  v3.receiver = self;
  v3.super_class = PFOSUnfairLock;
  [(PFOSUnfairLock *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PFOSUnfairLock *)self lockIdentifier];
  [v3 appendString:v4 withName:@"lockIdentifier"];

  if (os_unfair_lock_trylock(&self->_lock))
  {
    [v3 appendDictionarySection:self->_userInfo withName:@"userInfo" skipIfEmpty:1];
    os_unfair_lock_unlock(&self->_lock);
  }

  v5 = [v3 build];

  return v5;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(PFOSUnfairLock *)self assertNotOwner];
  [(PFOSUnfairLock *)self lock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PFOSUnfairLock_performBlock___block_invoke;
  v7[3] = &unk_1E8189BF8;
  v7[4] = self;
  v5 = MEMORY[0x1C691C400](v7);
  v6 = objc_autoreleasePoolPush();
  v4[2](v4);
  objc_autoreleasePoolPop(v6);
  v5[2](v5);
}

- (void)performBlockWhileCapturingWeak:(id)a3 performBlock:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  [(PFOSUnfairLock *)self assertNotOwner];
  [(PFOSUnfairLock *)self lock];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_loadWeakRetained(&location);
  v6[2](v6, v8);

  objc_autoreleasePoolPop(v7);
  [(PFOSUnfairLock *)self unlock];

  objc_destroyWeak(&location);
}

- (NSDictionary)userInfo
{
  [(PFOSUnfairLock *)self lock];
  v3 = [(NSMutableDictionary *)self->_userInfo copy];
  [(PFOSUnfairLock *)self unlock];

  return v3;
}

- (BOOL)mutateUserInfo:(id)a3
{
  v4 = a3;
  [(PFOSUnfairLock *)self assertNotOwner];
  if (v4)
  {
    [(PFOSUnfairLock *)self lock];
    v5 = self->_userInfo;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
    v4[2](v4, v6);
    v7 = [v6 isEqualToDictionary:v5];
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_userInfo, v6);
    }

    v8 = v7 ^ 1;
    [(PFOSUnfairLock *)self unlock];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)performBlockWhileCapturingWeak:(os_log_t)log performBlock:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "PFOSUnfairLock '%{public}@' encountered exception: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end