@interface PFPosterExtensionInstance
+ (id)extensionInstanceForIdentity:(id)identity instanceIdentifier:(id)identifier;
+ (id)extensionInstanceForPath:(id)path instanceIdentifier:(id)identifier;
- (BOOL)terminateWithExplanation:(id)explanation error:(id *)error;
- (BSAuditToken)auditToken;
- (NSString)description;
- (PFPosterExtensionInstance)initWithExtension:(id)extension;
- (PFPosterExtensionInstance)initWithExtension:(id)extension instanceIdentifier:(id)identifier;
- (id)bootupExtensionInstanceWithError:(id *)error;
- (void)_didAcquireExtensionProcess:(id)process error:(id)error;
- (void)_extensionProcessDidInterrupt;
- (void)_fireObserversRespondingToSelector:(SEL)selector block:(id)block;
- (void)_sync_didInvalidate;
- (void)_sync_willInvalidate;
- (void)addInstanceObserver:(id)observer;
- (void)bootupExtensionInstance:(id)instance;
- (void)dealloc;
- (void)invalidate;
- (void)removeInstanceObserver:(id)observer;
@end

@implementation PFPosterExtensionInstance

+ (id)extensionInstanceForIdentity:(id)identity instanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  v7 = [PFPosterExtensionInstance alloc];
  v8 = [PFPosterExtension extensionWithIdentity:identityCopy];

  v9 = [(PFPosterExtensionInstance *)v7 initWithExtension:v8 instanceIdentifier:identifierCopy];

  return v9;
}

+ (id)extensionInstanceForPath:(id)path instanceIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  v7 = MEMORY[0x1E6966CF8];
  v8 = objc_alloc(MEMORY[0x1E6966CE0]);
  v9 = MEMORY[0x1E696AE18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__PFPosterExtensionInstance_extensionInstanceForPath_instanceIdentifier___block_invoke;
  v17[3] = &unk_1E818A168;
  v10 = pathCopy;
  v18 = v10;
  v11 = [v9 predicateWithBlock:v17];
  v12 = [v8 initWithExtensionPointIdentifier:@"com.apple.posterkit.provider" predicate:v11];
  v13 = [v7 executeQuery:v12];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v15 = [PFPosterExtensionInstance extensionInstanceForIdentity:firstObject instanceIdentifier:identifierCopy];
  }

  else
  {
    firstObject = PFLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [PFPosterExtensionInstance extensionInstanceForPath:v10 instanceIdentifier:firstObject];
    }

    v15 = 0;
  }

  return v15;
}

uint64_t __73__PFPosterExtensionInstance_extensionInstanceForPath_instanceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [*(a1 + 32) serverIdentity];
  v5 = [v4 provider];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (PFPosterExtensionInstance)initWithExtension:(id)extension
{
  v4 = MEMORY[0x1E696AFB0];
  extensionCopy = extension;
  pf_defaultInstanceIdentifier = [v4 pf_defaultInstanceIdentifier];
  v7 = [(PFPosterExtensionInstance *)self initWithExtension:extensionCopy instanceIdentifier:pf_defaultInstanceIdentifier];

  return v7;
}

- (PFPosterExtensionInstance)initWithExtension:(id)extension instanceIdentifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  if (!extensionCopy)
  {
    [PFPosterExtensionInstance initWithExtension:a2 instanceIdentifier:?];
  }

  pf_defaultInstanceIdentifier = identifierCopy;
  if (!identifierCopy)
  {
    pf_defaultInstanceIdentifier = [MEMORY[0x1E696AFB0] pf_defaultInstanceIdentifier];
  }

  v34.receiver = self;
  v34.super_class = PFPosterExtensionInstance;
  v11 = [(PFPosterExtensionInstance *)&v34 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extension, extension);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = weakObjectsHashTable;

    v15 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
    invalidationFlag = v12->_invalidationFlag;
    v12->_invalidationFlag = v15;

    v17 = [pf_defaultInstanceIdentifier copy];
    instanceIdentifier = v12->_instanceIdentifier;
    v12->_instanceIdentifier = v17;

    v19 = [objc_alloc(MEMORY[0x1E6966CB8]) initWithIdentifier:pf_defaultInstanceIdentifier];
    v20 = objc_alloc(MEMORY[0x1E6966CC8]);
    identity = [extensionCopy identity];
    v22 = [v20 initWithExtensionIdentity:identity instanceIdentifier:v19];
    hostConfiguration = v12->_hostConfiguration;
    v12->_hostConfiguration = v22;

    objc_initWeak(&location, v12);
    v24 = v12->_hostConfiguration;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __66__PFPosterExtensionInstance_initWithExtension_instanceIdentifier___block_invoke;
    v31 = &unk_1E818A190;
    objc_copyWeak(&v32, &location);
    [(_EXHostConfiguration *)v24 setInterruptionHandler:&v28];
    v25 = [(_EXHostConfiguration *)v12->_hostConfiguration rbsProcessIdentity:v28];
    processIdentity = v12->_processIdentity;
    v12->_processIdentity = v25;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __66__PFPosterExtensionInstance_initWithExtension_instanceIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _extensionProcessDidInterrupt];
}

- (void)dealloc
{
  [(PFPosterExtensionInstance *)self invalidate];
  v3.receiver = self;
  v3.super_class = PFPosterExtensionInstance;
  [(PFPosterExtensionInstance *)&v3 dealloc];
}

- (void)bootupExtensionInstance:(id)instance
{
  instanceCopy = instance;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    objc_initWeak(&location, self);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
    {
      if (instanceCopy)
      {
        v7 = [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
        instanceCopy[2](instanceCopy, 0, v7);
      }

      goto LABEL_17;
    }

    extensionProcess = selfCopy->_extensionProcess;
    if (extensionProcess && [(_EXExtensionProcess *)extensionProcess isValid])
    {
      (instanceCopy)[2](instanceCopy, selfCopy->_extensionProcess, 0);
LABEL_17:
      objc_sync_exit(selfCopy);

      objc_destroyWeak(&location);
      goto LABEL_18;
    }

    bootExtensionInstanceCompletionBlocks = selfCopy->_bootExtensionInstanceCompletionBlocks;
    if (bootExtensionInstanceCompletionBlocks)
    {
      if (!instanceCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = objc_opt_new();
      v11 = selfCopy->_bootExtensionInstanceCompletionBlocks;
      selfCopy->_bootExtensionInstanceCompletionBlocks = v10;

      if (!instanceCopy)
      {
LABEL_12:
        if (bootExtensionInstanceCompletionBlocks)
        {
          goto LABEL_17;
        }

LABEL_16:
        v14 = selfCopy->_extensionProcess;
        selfCopy->_extensionProcess = 0;

        auditToken = selfCopy->_auditToken;
        selfCopy->_auditToken = 0;

        v16 = MEMORY[0x1E6966CC0];
        hostConfiguration = selfCopy->_hostConfiguration;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __53__PFPosterExtensionInstance_bootupExtensionInstance___block_invoke;
        v18[3] = &unk_1E818A1B8;
        objc_copyWeak(&v19, &location);
        [v16 extensionProcessWithConfiguration:hostConfiguration completionHandler:v18];
        objc_destroyWeak(&v19);
        goto LABEL_17;
      }
    }

    v12 = selfCopy->_bootExtensionInstanceCompletionBlocks;
    v13 = [instanceCopy copy];
    [(NSMutableArray *)v12 addObject:v13];

    if (bootExtensionInstanceCompletionBlocks)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (instanceCopy)
  {
    v5 = [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
    instanceCopy[2](instanceCopy, 0, v5);
  }

LABEL_18:
}

void __53__PFPosterExtensionInstance_bootupExtensionInstance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didAcquireExtensionProcess:v6 error:v5];
}

- (id)bootupExtensionInstanceWithError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    extensionProcess = selfCopy->_extensionProcess;
    if (!extensionProcess || ![(_EXExtensionProcess *)extensionProcess isValid])
    {
      if (selfCopy->_bootExtensionInstanceCompletionBlocks)
      {
        if (error)
        {
          v8 = MEMORY[0x1E696ABC0];
          v15 = *MEMORY[0x1E696A588];
          v16[0] = @"Extension process was already bootstrapped; need to wait until that finishes";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
          *error = [v8 pf_errorWithCode:0 userInfo:v9];
        }

        v5 = 0;
        goto LABEL_13;
      }

      v10 = [MEMORY[0x1E6966CC0] extensionProcessWithConfiguration:selfCopy->_hostConfiguration error:error];
      v11 = selfCopy->_extensionProcess;
      selfCopy->_extensionProcess = v10;

      auditToken = selfCopy->_auditToken;
      selfCopy->_auditToken = 0;
    }

    v5 = selfCopy->_extensionProcess;
LABEL_13:
    objc_sync_exit(selfCopy);

    goto LABEL_14;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
    *error = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)terminateWithExplanation:(id)explanation error:(id *)error
{
  explanationCopy = explanation;
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    extensionProcess = selfCopy->_extensionProcess;
    if (extensionProcess && [(_EXExtensionProcess *)extensionProcess isValid])
    {
      [(PFPosterExtensionInstance *)selfCopy _sync_willInvalidate];
      v9 = [MEMORY[0x1E69C7610] predicateMatching:selfCopy->_extensionProcess];
      v10 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:explanationCopy];
      v11 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v9 context:v10];
      v12 = [v11 execute:error];
      if (v12)
      {
        [(PFPosterExtensionInstance *)selfCopy _sync_didInvalidate];
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BSAuditToken)auditToken
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    extensionProcess = selfCopy->_extensionProcess;
    if (extensionProcess && [(_EXExtensionProcess *)extensionProcess isValid])
    {
      auditToken = selfCopy->_auditToken;
      if (!auditToken)
      {
        v7 = MEMORY[0x1E698E620];
        v8 = selfCopy->_extensionProcess;
        if (v8)
        {
          [(_EXExtensionProcess *)v8 auditToken];
        }

        else
        {
          memset(v12, 0, sizeof(v12));
        }

        v9 = [v7 tokenFromAuditToken:v12];
        v10 = selfCopy->_auditToken;
        selfCopy->_auditToken = v9;

        auditToken = selfCopy->_auditToken;
      }

      v3 = auditToken;
    }

    else
    {
      v3 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  posterExtensionBundleIdentifier = [(PFPosterExtension *)self->_extension posterExtensionBundleIdentifier];
  v5 = [v3 appendObject:posterExtensionBundleIdentifier withName:@"extension"];

  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v6 = [v3 appendBool:1 withName:@"invalidated"];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [v3 appendObject:selfCopy->_auditToken withName:@"auditToken" skipIfNil:1];
    v9 = [v3 appendObject:selfCopy->_extensionProcess withName:@"extensionProcess" skipIfNil:1];
    objc_sync_exit(selfCopy);
  }

  build = [v3 build];

  return build;
}

- (void)_didAcquireExtensionProcess:(id)process error:(id)error
{
  processCopy = process;
  errorCopy = error;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    [processCopy invalidate];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (processCopy)
    {
      objc_storeStrong(&selfCopy->_extensionProcess, process);
      auditToken = selfCopy->_auditToken;
      selfCopy->_auditToken = 0;
    }

    v11 = [(NSMutableArray *)selfCopy->_bootExtensionInstanceCompletionBlocks copy];
    [(NSMutableArray *)selfCopy->_bootExtensionInstanceCompletionBlocks removeAllObjects];
    bootExtensionInstanceCompletionBlocks = selfCopy->_bootExtensionInstanceCompletionBlocks;
    selfCopy->_bootExtensionInstanceCompletionBlocks = 0;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PFPosterExtensionInstance__didAcquireExtensionProcess_error___block_invoke;
    v13[3] = &unk_1E818A1E0;
    v14 = processCopy;
    v15 = errorCopy;
    [v11 enumerateObjectsUsingBlock:v13];

    objc_sync_exit(selfCopy);
  }
}

void __63__PFPosterExtensionInstance__didAcquireExtensionProcess_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1C691C400](a2);
  (*(v3 + 2))(v3, *(a1 + 32), *(a1 + 40));
}

- (void)_extensionProcessDidInterrupt
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PFPosterExtensionInstance__extensionProcessDidInterrupt__block_invoke;
    v5[3] = &unk_1E818A208;
    v5[4] = selfCopy;
    [(PFPosterExtensionInstance *)selfCopy _fireObserversRespondingToSelector:sel_extensionInstanceProcessDidInterrupt_ block:v5];
    extensionProcess = selfCopy->_extensionProcess;
    selfCopy->_extensionProcess = 0;

    objc_sync_exit(selfCopy);
  }
}

- (void)addInstanceObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)removeInstanceObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)_fireObserversRespondingToSelector:(SEL)selector block:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = selfCopy->_observers;
  v8 = 0;
  v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          if (!v8)
          {
            v8 = objc_opt_new();
          }

          [v8 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        blockCopy[2](blockCopy, *(*(&v18 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [(PFPosterExtensionInstance *)self _sync_willInvalidate];
    [(_EXExtensionProcess *)self->_extensionProcess invalidate];
    extensionProcess = self->_extensionProcess;
    self->_extensionProcess = 0;

    [(PFPosterExtensionInstance *)self _sync_didInvalidate];
  }
}

- (void)_sync_willInvalidate
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PFPosterExtensionInstance__sync_willInvalidate__block_invoke;
  v5[3] = &unk_1E818A208;
  v5[4] = self;
  [(PFPosterExtensionInstance *)self _fireObserversRespondingToSelector:sel_extensionInstanceWillInvalidate_ block:v5];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [(NSMutableArray *)selfCopy->_bootExtensionInstanceCompletionBlocks copy];
  [(NSMutableArray *)selfCopy->_bootExtensionInstanceCompletionBlocks removeAllObjects];
  objc_sync_exit(selfCopy);

  [v4 enumerateObjectsUsingBlock:&__block_literal_global_20];
}

void __49__PFPosterExtensionInstance__sync_willInvalidate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1C691C400](a2);
  v2 = [MEMORY[0x1E696ABC0] pf_errorWithCode:2];
  v3[2](v3, 0, v2);
}

- (void)_sync_didInvalidate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PFPosterExtensionInstance__sync_didInvalidate__block_invoke;
  v4[3] = &unk_1E818A208;
  v4[4] = self;
  [(PFPosterExtensionInstance *)self _fireObserversRespondingToSelector:sel_extensionInstanceDidInvalidate_ block:v4];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeAllObjects];
  objc_sync_exit(selfCopy);
}

+ (void)extensionInstanceForPath:(void *)a1 instanceIdentifier:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 serverIdentity];
  v4 = [v3 provider];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1C269D000, a2, OS_LOG_TYPE_ERROR, "No poster providers were found for %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtension:(const char *)a1 instanceIdentifier:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extension"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"PFPosterExtension.m";
    v10 = 1024;
    v11 = 186;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end