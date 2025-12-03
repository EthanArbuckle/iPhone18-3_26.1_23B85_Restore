@interface PXRunNode
+ (id)_defaultNodeRunnerWithQualityOfService:(int64_t)service;
+ (void)processGraphForRunNode:(id)node withQualityOfService:(int64_t)service;
- (PXRunNode)initWithDependencies:(id)dependencies;
- (PXRunNodeDelegate)delegate;
- (id)newOperation;
- (unint64_t)state;
- (void)_performChangesToOperation:(id)operation;
- (void)cancelWithError:(id)error;
- (void)completeWithError:(id)error;
- (void)run;
@end

@implementation PXRunNode

- (PXRunNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  delegate = [(PXRunNode *)self delegate];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PXRunNode_cancelWithError___block_invoke;
  v7[3] = &unk_1E772E350;
  v7[4] = &v8;
  [(PXRunNode *)self _performChangesToOperation:v7];
  if (*(v9 + 24) == 1)
  {
    [(PXRunNode *)self didCancel];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(PXRunNode *)self delegate];
      [delegate2 runNode:self didCancelWithError:errorCopy];
    }
  }

  _Block_object_dispose(&v8, 8);
}

void *__29__PXRunNode_cancelWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 cancelIfAble];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)run
{
  if (([(PXRunNode *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRunNode.m" lineNumber:153 description:{@"%@ should override %s", objc_opt_class(), "-[PXRunNode run]"}];
  }

  [(PXRunNode *)self complete];
}

- (void)completeWithError:(id)error
{
  errorCopy = error;
  delegate = [(PXRunNode *)self delegate];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__PXRunNode_completeWithError___block_invoke;
  v6[3] = &unk_1E772E350;
  v6[4] = &v7;
  [(PXRunNode *)self _performChangesToOperation:v6];
  if (*(v8 + 24) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate runNode:self didCompleteWithError:errorCopy];
  }

  _Block_object_dispose(&v7, 8);
}

void *__31__PXRunNode_completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 completeIfAble];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __18__PXRunNode_state__block_invoke;
  v4[3] = &unk_1E772E350;
  v4[4] = &v5;
  [(PXRunNode *)self _performChangesToOperation:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __18__PXRunNode_state__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 state];
  }

  return v4;
}

- (void)_performChangesToOperation:(id)operation
{
  operationCopy = operation;
  _operationLock = [(PXRunNode *)self _operationLock];
  [_operationLock lock];

  WeakRetained = objc_loadWeakRetained(&self->_operation);
  v6 = operationCopy[2](operationCopy, WeakRetained);

  objc_storeWeak(&self->_operation, v6);
  _operationLock2 = [(PXRunNode *)self _operationLock];
  [_operationLock2 unlock];
}

- (id)newOperation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8683;
  v9 = __Block_byref_object_dispose__8684;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__PXRunNode_newOperation__block_invoke;
  v4[3] = &unk_1E772E328;
  v4[4] = self;
  v4[5] = &v5;
  [(PXRunNode *)self _performChangesToOperation:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

id __25__PXRunNode_newOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (!v3 || (v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = [[PXRunNodeOperation alloc] initWithRunNode:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 40) + 8) + 40);
    v3 = v8;
  }

  return v3;
}

- (PXRunNode)initWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v15.receiver = self;
  v15.super_class = PXRunNode;
  v5 = [(PXRunNode *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    operationLock = v5->__operationLock;
    v5->__operationLock = v6;

    if (dependenciesCopy)
    {
      v8 = [dependenciesCopy copy];
      dependencies = v5->_dependencies;
      v5->_dependencies = v8;

      [MEMORY[0x1E695DFD8] setWithArray:dependenciesCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
      v12 = v5->_dependencies;
      v5->_dependencies = array;

      [MEMORY[0x1E695DFD8] set];
    }
    v10 = ;
    dependencySet = v5->__dependencySet;
    v5->__dependencySet = v10;
  }

  return v5;
}

+ (void)processGraphForRunNode:(id)node withQualityOfService:(int64_t)service
{
  nodeCopy = node;
  v6 = [objc_opt_class() _defaultNodeRunnerWithQualityOfService:service];
  [v6 processGraphForRunNode:nodeCopy];
}

+ (id)_defaultNodeRunnerWithQualityOfService:(int64_t)service
{
  if (_defaultNodeRunnerWithQualityOfService__onceToken != -1)
  {
    dispatch_once(&_defaultNodeRunnerWithQualityOfService__onceToken, &__block_literal_global_8698);
  }

  v4 = _defaultNodeRunnerWithQualityOfService__nodeRunnersByQOS;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:service];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(PXNodeRunner);
    [(PXNodeRunner *)v6 setQualityOfService:service];
    v7 = _defaultNodeRunnerWithQualityOfService__nodeRunnersByQOS;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:service];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  return v6;
}

void __52__PXRunNode__defaultNodeRunnerWithQualityOfService___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _defaultNodeRunnerWithQualityOfService__nodeRunnersByQOS;
  _defaultNodeRunnerWithQualityOfService__nodeRunnersByQOS = v0;
}

@end