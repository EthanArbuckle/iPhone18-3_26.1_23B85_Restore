@interface PFPosterExtensionInstancePool
- (PFPosterExtensionInstancePool)initWithExtensionProvider:(id)provider poolEntryToRelinquishTime:(double)time;
- (id)acquireInstanceForExtensionWithIdentifier:(id)identifier error:(id *)error;
- (void)dealloc;
- (void)relinquishExtensionInstance:(id)instance;
@end

@implementation PFPosterExtensionInstancePool

- (PFPosterExtensionInstancePool)initWithExtensionProvider:(id)provider poolEntryToRelinquishTime:(double)time
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PFPosterExtensionInstancePool;
  v8 = [(PFPosterExtensionInstancePool *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionProvider, provider);
    v9->_poolEntryToRelinquishTime = time;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    extensionBundleIdentifierToReasonMap = v9->_extensionBundleIdentifierToReasonMap;
    v9->_extensionBundleIdentifierToReasonMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    relinquishTimerMap = v9->_relinquishTimerMap;
    v9->_relinquishTimerMap = strongToStrongObjectsMapTable2;
  }

  return v9;
}

- (void)dealloc
{
  extensionBundleIdentifierToReasonMap = self->_extensionBundleIdentifierToReasonMap;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PFPosterExtensionInstancePool_dealloc__block_invoke;
  v5[3] = &unk_1E8189980;
  v5[4] = self;
  [(NSMapTable *)extensionBundleIdentifierToReasonMap bs_each:v5];
  v4.receiver = self;
  v4.super_class = PFPosterExtensionInstancePool;
  [(PFPosterExtensionInstancePool *)&v4 dealloc];
}

void __40__PFPosterExtensionInstancePool_dealloc__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PFPosterExtensionInstancePool_dealloc__block_invoke_2;
  v7[3] = &unk_1E8189958;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 bs_each:v7];
}

- (id)acquireInstanceForExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [PFPosterExtensionInstancePool acquireInstanceForExtensionWithIdentifier:a2 error:?];
  }

  v8 = identifierCopy;
  v9 = [(NSMapTable *)self->_extensionBundleIdentifierToReasonMap objectForKey:identifierCopy];
  lastObject = [v9 lastObject];

  if (lastObject)
  {
    v11 = [(NSMapTable *)self->_extensionBundleIdentifierToReasonMap objectForKey:v8];
    [v11 removeLastObject];

    v12 = PFLogExtensionInstancePool();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v31 = v14;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2114;
      v35 = lastObject;
      _os_log_impl(&dword_1C269D000, v12, OS_LOG_TYPE_DEFAULT, "(%@:%p) reclaiming reason: %{public}@", buf, 0x20u);
    }

    v15 = [(PFPosterExtensionInstancePool *)self _buildKeyForExtensionIdentifier:v8 reason:lastObject];
    v16 = [(NSMapTable *)self->_relinquishTimerMap objectForKey:v15];
    if (v16)
    {
      v17 = PFLogExtensionInstancePool();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138412802;
        v31 = v19;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2114;
        v35 = lastObject;
        _os_log_impl(&dword_1C269D000, v17, OS_LOG_TYPE_DEFAULT, "(%@:%p) canceling relinquish timer: %{public}@", buf, 0x20u);
      }

      [v16 invalidate];
      [(NSMapTable *)self->_relinquishTimerMap removeObjectForKey:v15];
    }
  }

  else
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    lastObject = [v20 stringWithFormat:@"[%@][%p][%@][%@]", v22, self, v8, uUIDString];

    v15 = PFLogExtensionInstancePool();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v25 = objc_opt_class();
    v16 = NSStringFromClass(v25);
    *buf = 138412802;
    v31 = v16;
    v32 = 2048;
    selfCopy3 = self;
    v34 = 2114;
    v35 = lastObject;
    _os_log_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEFAULT, "(%@:%p) new claim with reason: %{public}@", buf, 0x20u);
  }

LABEL_12:
  v26 = [(PFPosterExtensionProvider *)self->_extensionProvider acquireInstanceForExtensionWithIdentifier:v8 reason:lastObject error:error];
  v27 = v26;
  if (v26)
  {
    objc_setAssociatedObject(v26, &__PFPosterExtensionInstancePoolReasonToken, lastObject, 1);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)relinquishExtensionInstance:(id)instance
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    [PFPosterExtensionInstancePool relinquishExtensionInstance:a2];
  }

  v6 = instanceCopy;
  v7 = objc_getAssociatedObject(instanceCopy, &__PFPosterExtensionInstancePoolReasonToken);
  extension = [v6 extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v10 = [(PFPosterExtensionInstancePool *)self _buildKeyForExtensionIdentifier:posterExtensionBundleIdentifier reason:v7];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E695DFF0];
  poolEntryToRelinquishTime = self->_poolEntryToRelinquishTime;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__PFPosterExtensionInstancePool_relinquishExtensionInstance___block_invoke;
  v22 = &unk_1E81899B0;
  objc_copyWeak(&v27, &location);
  v13 = posterExtensionBundleIdentifier;
  v23 = v13;
  v14 = v7;
  v24 = v14;
  selfCopy = self;
  v15 = v10;
  v26 = v15;
  v16 = [v11 scheduledTimerWithTimeInterval:0 repeats:&v19 block:poolEntryToRelinquishTime];
  [v16 setTolerance:{self->_poolEntryToRelinquishTime / 10.0, v19, v20, v21, v22}];
  [(NSMapTable *)self->_relinquishTimerMap setObject:v16 forKey:v15];
  v17 = [(NSMapTable *)self->_extensionBundleIdentifierToReasonMap objectForKey:v13];
  v18 = v17;
  if (v17)
  {
    [v17 addObject:v14];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
    [(NSMapTable *)self->_extensionBundleIdentifierToReasonMap setObject:v18 forKey:v13];
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __61__PFPosterExtensionInstancePool_relinquishExtensionInstance___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([v3 isValid])
    {
      v5 = [WeakRetained[3] objectForKey:*(a1 + 32)];
      v6 = [v5 containsObject:*(a1 + 40)];

      if (v6)
      {
        v7 = PFLogExtensionInstancePool();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v12 = *(a1 + 40);
          v11 = *(a1 + 48);
          v14 = 138412802;
          v15 = v10;
          v16 = 2048;
          v17 = v11;
          v18 = 2114;
          v19 = v12;
          _os_log_impl(&dword_1C269D000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%p) relinquishing reason: %{public}@", &v14, 0x20u);
        }

        [WeakRetained[1] relinquishExtensionInstanceWithIdentifier:*(a1 + 32) reason:*(a1 + 40)];
      }
    }

    [WeakRetained[4] removeObjectForKey:*(a1 + 56)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)acquireInstanceForExtensionWithIdentifier:(const char *)a1 error:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"extensionIdentifier", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)relinquishExtensionInstance:(const char *)a1 .cold.1(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"extensionInstance", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end