@interface _PRUISPosterSnapshotControllerImpl
+ (id)defaultCachingOptionsForRequest:(id)a3;
- (_PRUISPosterSnapshotControllerImpl)initWithCache:(id)a3 instanceIdentifier:(id)a4 extensionProvider:(id)a5;
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (void)_snapshotRequestDidFinishWithResult:(id)a3 snapshotterError:(id)a4 request:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)executeSnapshotRequest:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)snapshotterDidInvalidateScene:(id)a3 didWaitForSceneInvalidation:(BOOL)a4 forRequest:(id)a5;
@end

@implementation _PRUISPosterSnapshotControllerImpl

- (_PRUISPosterSnapshotControllerImpl)initWithCache:(id)a3 instanceIdentifier:(id)a4 extensionProvider:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v14 = v13;
  if (v13 && ([v13 conformsToProtocol:&unk_1F4B13C60] & 1) == 0)
  {
    [_PRUISPosterSnapshotControllerImpl initWithCache:a2 instanceIdentifier:? extensionProvider:?];
  }

  v34.receiver = self;
  v34.super_class = _PRUISPosterSnapshotControllerImpl;
  v15 = [(_PRUISPosterSnapshotControllerImpl *)&v34 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
    invalidationFlag = v15->_invalidationFlag;
    v15->_invalidationFlag = v16;

    v18 = v12 ? v12 : [objc_alloc(MEMORY[0x1E69C5170]) initWithDefaultInstanceIdentifier:v11];
    extensionProvider = v15->_extensionProvider;
    v15->_extensionProvider = v18;

    [(PFPosterExtensionProvider *)v15->_extensionProvider startWithImmediateQueryExecution:0];
    objc_storeStrong(&v15->_cache, a3);
    v15->_lock._os_unfair_lock_opaque = 0;
    v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    lock_providerToSnapshotterMap = v15->_lock_providerToSnapshotterMap;
    v15->_lock_providerToSnapshotterMap = v20;

    v22 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    lock_snapshotIdentifierToSnapshotRequestMap = v15->_lock_snapshotIdentifierToSnapshotRequestMap;
    v15->_lock_snapshotIdentifierToSnapshotRequestMap = v22;

    v24 = [MEMORY[0x1E698E698] concurrent];
    v25 = [v24 autoreleaseFrequency:1];
    v26 = BSDispatchQueueCreate();
    completionBlockQueue = v15->_completionBlockQueue;
    v15->_completionBlockQueue = v26;

    cache = v15->_cache;
    if (cache)
    {
      v33 = 0;
      v29 = [(PUIPosterSnapshotCache *)cache checkCacheIsReachableWithError:&v33];
      v30 = v33;
      if (v30 || (v29 & 1) == 0)
      {
        v31 = PRUISLogSnapshotting();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          [_PRUISPosterSnapshotControllerImpl initWithCache:v30 instanceIdentifier:v31 extensionProvider:?];
        }
      }
    }
  }

  return v15;
}

- (void)dealloc
{
  [(_PRUISPosterSnapshotControllerImpl *)self invalidate];
  lock_providerToSnapshotterMap = self->_lock_providerToSnapshotterMap;
  self->_lock_providerToSnapshotterMap = 0;

  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  self->_lock_snapshotIdentifierToSnapshotRequestMap = 0;

  v5.receiver = self;
  v5.super_class = _PRUISPosterSnapshotControllerImpl;
  [(_PRUISPosterSnapshotControllerImpl *)&v5 dealloc];
}

- (void)executeSnapshotRequest:(id)a3 completion:(id)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:a2 completion:?];
  }

  v9 = v8;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v10 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v9)[2](v9, v7, 0, v10, 0);
  }

  else
  {
    v11 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke;
    aBlock[3] = &unk_1E83A8EA8;
    v37 = v11;
    v47 = v37;
    v48 = v9;
    v38 = _Block_copy(aBlock);
    v39 = [v7 path];
    v12 = [v39 serverIdentity];
    v13 = [v12 provider];

    v14 = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
    v15 = [v14 objectForKey:v13];

    if (v15)
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectForKey:v13];
      v17 = v16;
      if (v16 && ([v16 isValid] & 1) != 0)
      {
        v18 = v17;
      }

      else
      {
        v19 = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
        v20 = [v19 objectForKey:v13];

        v21 = [(PFPosterExtensionProvider *)self->_extensionProvider instanceProvider];
        v22 = [v21 acquireInstanceForExtension:v20 reason:@"snapshots" error:0];

        v18 = [objc_alloc(MEMORY[0x1E69C5618]) initWithExtensionInstance:v22];
        [v18 setDelegate:self];
        [(NSMapTable *)self->_lock_providerToSnapshotterMap setObject:v18 forKey:v13];
      }

      lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
      v24 = [v7 uniqueIdentifier];
      [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap setObject:v7 forKey:v24];

      lock_runtimeAssertion = self->_lock_runtimeAssertion;
      ++self->_lock_runningSnapshotters;
      if (lock_runtimeAssertion)
      {
        v26 = PRUISLogSnapshotting();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v26 completion:?];
        }
      }

      else
      {
        v30 = MEMORY[0x1E69C7548];
        v31 = [MEMORY[0x1E69C7640] currentProcess];
        v32 = [v30 pf_prewarmRuntimeAssertionForTarget:v31 explanation:@"Snapshotting assertion"];

        v45 = 0;
        LOBYTE(v31) = [v32 acquireWithError:&v45];
        v26 = v45;
        v33 = PRUISLogSnapshotting();
        v34 = v33;
        if (v31)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v34 completion:?];
          }

          v35 = v32;
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v26 completion:v34];
          }

          v35 = 0;
        }

        v36 = self->_lock_runtimeAssertion;
        self->_lock_runtimeAssertion = v35;
      }

      os_unfair_lock_unlock(&self->_lock);
      objc_initWeak(&location, self);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke_118;
      v40[3] = &unk_1E83A8ED0;
      objc_copyWeak(&v43, &location);
      v42 = v38;
      v41 = v7;
      [v18 enqueueSnapshotRequest:v41 completion:v40];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Extension '%@' was not found", v13];
      v50[0] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v18 = [v27 pui_errorWithCode:3 userInfo:v29];

      (*(v38 + 2))(v38, v7, 0, v18, 0);
    }
  }
}

- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  cache = self->_cache;
  v6 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:a3];
  v7 = [(PUIPosterSnapshotCache *)cache latestSnapshotBundleMatchingPredicate:v6];
  v8 = [v7 result:a4];

  return v8;
}

- (void)_snapshotRequestDidFinishWithResult:(id)a3 snapshotterError:(id)a4 request:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    [_PRUISPosterSnapshotControllerImpl _snapshotRequestDidFinishWithResult:a2 snapshotterError:? request:? completion:?];
  }

  v15 = v14;
  v16 = self->_completionBlockQueue;
  os_unfair_lock_lock(&self->_lock);
  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  v18 = [v13 uniqueIdentifier];
  [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap removeObjectForKey:v18];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke;
    block[3] = &unk_1E83A87D8;
    v41 = v15;
    v39 = v13;
    v40 = v12;
    dispatch_async(v16, block);

    v19 = v41;
  }

  else if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    [v11 invalidate];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_131;
    v26[3] = &unk_1E83A8558;
    v28 = v15;
    v27 = v13;
    dispatch_async(v16, v26);

    v19 = v28;
  }

  else
  {
    v19 = [(_PRUISPosterSnapshotControllerImpl *)self cache];
    if (v19)
    {
      v25 = [_PRUISPosterSnapshotControllerImpl defaultCachingOptionsForRequest:v13];
      v20 = [v11 snapshotBundle];
      v24 = [v19 cacheSnapshotBundle:v20 options:v25];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_2;
      v34[3] = &unk_1E83A8EF8;
      v35 = v13;
      v36 = v11;
      v37 = v15;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_128;
      v29[3] = &unk_1E83A8F20;
      v30 = v35;
      v31 = v20;
      v32 = v36;
      v33 = v37;
      v21 = MEMORY[0x1E69C5268];
      v22 = v20;
      v23 = [v21 schedulerWithDispatchQueue:v16];
      [v24 addSuccessBlock:v34 andFailureBlock:v29 scheduler:v23];
    }
  }
}

- (void)snapshotterDidInvalidateScene:(id)a3 didWaitForSceneInvalidation:(BOOL)a4 forRequest:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  v11 = [v9 uniqueIdentifier];
  v12 = [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap objectForKey:v11];

  if (v12)
  {
    lock_runtimeAssertion = PRUISLogSnapshotting();
    if (os_log_type_enabled(lock_runtimeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_1CAE63000, lock_runtimeAssertion, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, but we're still expecting more work from this snapshotter", buf, 0x16u);
    }

LABEL_15:

    goto LABEL_16;
  }

  --self->_lock_runningSnapshotters;
  v15 = PRUISLogSnapshotting();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    lock_runningSnapshotters = self->_lock_runningSnapshotters;
    *buf = 138544130;
    v29 = v16;
    v30 = 2114;
    v31 = v8;
    v32 = 2050;
    v33 = lock_runningSnapshotters;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_1CAE63000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, remaining running snapshotters: %{public}lu, request: %{public}@", buf, 0x2Au);
  }

  if (!self->_lock_runningSnapshotters)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * v22++) invalidate];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }

    [(NSMapTable *)self->_lock_providerToSnapshotterMap removeAllObjects];
    [(RBSAssertion *)self->_lock_runtimeAssertion invalidate];
    lock_runtimeAssertion = self->_lock_runtimeAssertion;
    self->_lock_runtimeAssertion = 0;
    goto LABEL_15;
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
}

+ (id)defaultCachingOptionsForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 path];
  v5 = [v4 isServerPosterPath];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v3 path];
    v8 = [v7 isServerPosterPath];

    if (v8)
    {
      v9 = [v3 path];
      v10 = [v9 serverIdentity];
      v11 = [v10 version];

      v12 = [v3 path];
      v13 = [v12 serverIdentity];
      v14 = [v13 posterUUID];

      if (v14 && v11)
      {
        v15 = [MEMORY[0x1E69C55C8] predicateMatchingBundleWithPosterVersionLessThan:v11 posterUUID:v14];
        [v6 addObject:v15];
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = [MEMORY[0x1E69C55D0] removeBundlesMatchingPredicates:v6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    os_unfair_lock_lock(&self->_lock);
    v3 = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectEnumerator];
    v4 = [v3 allObjects];

    lock_providerToSnapshotterMap = self->_lock_providerToSnapshotterMap;
    self->_lock_providerToSnapshotterMap = 0;

    v6 = self->_lock_runtimeAssertion;
    lock_runtimeAssertion = self->_lock_runtimeAssertion;
    self->_lock_runtimeAssertion = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(PFPosterExtensionProvider *)self->_extensionProvider cancel];
    extensionProvider = self->_extensionProvider;
    self->_extensionProvider = 0;
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (v6)
  {
    [(RBSAssertion *)v6 invalidate];
  }
}

- (void)initWithCache:(const char *)a1 instanceIdentifier:extensionProvider:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object conformsToProtocol:@protocol(PUIPosterSnapshotCache)]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCache:(uint64_t)a1 instanceIdentifier:(NSObject *)a2 extensionProvider:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_FAULT, "Unable to setup cache: %@. Future snapshots may fail to be cached.", &v2, 0xCu);
}

- (void)executeSnapshotRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Error acquiring runtime assertion:'%@'", &v2, 0xCu);
}

- (void)executeSnapshotRequest:(const char *)a1 completion:.cold.4(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completion", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_snapshotRequestDidFinishWithResult:(const char *)a1 snapshotterError:request:completion:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completion", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end