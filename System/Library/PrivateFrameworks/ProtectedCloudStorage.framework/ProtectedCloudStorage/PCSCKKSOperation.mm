@interface PCSCKKSOperation
+ (id)operation:(id)operation block:(id)block;
- (BOOL)checkDependencies;
- (BOOL)startOperation;
- (void)addSuccessDependency:(id)dependency;
- (void)completeOperation;
@end

@implementation PCSCKKSOperation

+ (id)operation:(id)operation block:(id)block
{
  blockCopy = block;
  operationCopy = operation;
  v7 = objc_alloc_init(PCSCKKSOperationBlock);
  [(PCSCKKSOperationBlock *)v7 setName:operationCopy];

  [(PCSCKKSOperationBlock *)v7 setBlock:blockCopy];

  return v7;
}

- (void)addSuccessDependency:(id)dependency
{
  dependencyCopy = dependency;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    successDependencies = selfCopy->_successDependencies;
    if (!successDependencies)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = selfCopy->_successDependencies;
      selfCopy->_successDependencies = array;

      successDependencies = selfCopy->_successDependencies;
    }

    [(NSMutableArray *)successDependencies addObject:dependencyCopy];
    objc_sync_exit(selfCopy);
  }

  [(PCSCKKSOperation *)self addDependency:dependencyCopy];
}

- (BOOL)checkDependencies
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_successDependencies;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  v4 = v3 == 0;
  v29 = v3;
  if (!v3)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v27 = selfCopy;
  v28 = *v32;
  v25 = *MEMORY[0x1E696AA08];
  v7 = 1;
  do
  {
    v8 = 0;
    do
    {
      if (*v32 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v31 + 1) + 8 * v8);
      isFinished = [v9 isFinished];
      isCancelled = [v9 isCancelled];
      error = [v9 error];
      v12 = error != 0;

      error2 = [v9 error];

      if (error2)
      {
        error3 = [v9 error];
        domain = [error3 domain];
        v16 = [domain isEqual:PCSCKKSOperationErrorDomain];

        if (v16)
        {
          error4 = [v9 error];
          selfCopy = v27;
          [(PCSCKKSOperation *)v27 setError:error4];
        }

        else
        {
          v18 = MEMORY[0x1E696ABC0];
          v19 = PCSCKKSOperationErrorDomain;
          v35 = v25;
          error4 = [v9 error];
          v36 = error4;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v21 = [v18 errorWithDomain:v19 code:1 userInfo:v20];
          selfCopy = v27;
          [(PCSCKKSOperation *)v27 setError:v21];
        }
      }

      v7 &= isFinished;
      v5 |= isCancelled;
      v6 |= v12;
      ++v8;
    }

    while (v29 != v8);
    v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v29);

  if (!(v5 & 1 | ((v7 & 1) == 0) | v6 & 1))
  {
    v4 = 1;
    goto LABEL_19;
  }

  error5 = [(PCSCKKSOperation *)selfCopy error];

  if (!error5)
  {
    obj = [MEMORY[0x1E696ABC0] errorWithDomain:PCSCKKSOperationErrorDomain code:2 userInfo:0];
    [(PCSCKKSOperation *)selfCopy setError:?];
    v4 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v4 = 0;
LABEL_19:
  v23 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)startOperation
{
  checkDependencies = [(PCSCKKSOperation *)self checkDependencies];
  v4 = [(PCSCKKSOperation *)self isCancelled]|| !checkDependencies;
  if (v4)
  {
    [(PCSCKKSOperation *)self willChangeValueForKey:@"isFinished"];
    self->finished = 1;
    [(PCSCKKSOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(PCSCKKSOperation *)self willChangeValueForKey:@"isExecuting"];
    self->executing = 1;
    [(PCSCKKSOperation *)self didChangeValueForKey:@"isExecuting"];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__PCSCKKSOperation_startOperation__block_invoke;
    v7[3] = &unk_1E7B1A020;
    objc_copyWeak(&v8, &location);
    v5 = objc_loadWeakRetained(&location);
    [v5 setCompletionBlock:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return (v4 & 1) == 0;
}

void __34__PCSCKKSOperation_startOperation__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [WeakRetained dependencies];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [WeakRetained removeDependency:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)completeOperation
{
  [(PCSCKKSOperation *)self willChangeValueForKey:@"isFinished"];
  [(PCSCKKSOperation *)self willChangeValueForKey:@"isExecuting"];
  self->executing = 0;
  self->finished = 1;
  [(PCSCKKSOperation *)self didChangeValueForKey:@"isExecuting"];

  [(PCSCKKSOperation *)self didChangeValueForKey:@"isFinished"];
}

@end