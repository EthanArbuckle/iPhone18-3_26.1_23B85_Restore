@interface PFOSUnfairLock
- (BOOL)mutateUserInfo:(id)info;
- (NSDictionary)userInfo;
- (PFOSUnfairLock)init;
- (PFOSUnfairLock)initWithLockIdentifier:(id)identifier;
- (id)description;
- (void)dealloc;
- (void)performBlock:(id)block;
- (void)performBlockWhileCapturingWeak:(id)weak performBlock:(id)block;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"PFOSUnfairLock-", uUIDString];
    lockIdentifier = v2->_lockIdentifier;
    v2->_lockIdentifier = v8;
  }

  return v2;
}

- (PFOSUnfairLock)initWithLockIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PFOSUnfairLock *)self init];
  if (v5 && [identifierCopy length])
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PFOSUnfairLock-", identifierCopy];
    lockIdentifier = v5->_lockIdentifier;
    v5->_lockIdentifier = identifierCopy;
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
  lockIdentifier = [(PFOSUnfairLock *)self lockIdentifier];
  [v3 appendString:lockIdentifier withName:@"lockIdentifier"];

  if (os_unfair_lock_trylock(&self->_lock))
  {
    [v3 appendDictionarySection:self->_userInfo withName:@"userInfo" skipIfEmpty:1];
    os_unfair_lock_unlock(&self->_lock);
  }

  build = [v3 build];

  return build;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [(PFOSUnfairLock *)self assertNotOwner];
  [(PFOSUnfairLock *)self lock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PFOSUnfairLock_performBlock___block_invoke;
  v7[3] = &unk_1E8189BF8;
  v7[4] = self;
  v5 = MEMORY[0x1C691C400](v7);
  v6 = objc_autoreleasePoolPush();
  blockCopy[2](blockCopy);
  objc_autoreleasePoolPop(v6);
  v5[2](v5);
}

- (void)performBlockWhileCapturingWeak:(id)weak performBlock:(id)block
{
  objc_initWeak(&location, weak);
  blockCopy = block;
  [(PFOSUnfairLock *)self assertNotOwner];
  [(PFOSUnfairLock *)self lock];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_loadWeakRetained(&location);
  blockCopy[2](blockCopy, v8);

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

- (BOOL)mutateUserInfo:(id)info
{
  infoCopy = info;
  [(PFOSUnfairLock *)self assertNotOwner];
  if (infoCopy)
  {
    [(PFOSUnfairLock *)self lock];
    v5 = self->_userInfo;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
    infoCopy[2](infoCopy, v6);
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