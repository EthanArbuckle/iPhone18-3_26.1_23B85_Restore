@interface PLInstrumentedBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (PLInstrumentedBlockOperation)init;
- (double)executionTime;
- (double)timeSpentWaitingInQueue;
- (id)description;
- (void)addExecutionBlock:(id)block;
@end

@implementation PLInstrumentedBlockOperation

- (double)timeSpentWaitingInQueue
{
  [(PLInstrumentedBlockOperation *)self creationTime];
  v4 = v3;
  result = 0.0;
  if (v4 != 0.0)
  {
    [(PLInstrumentedBlockOperation *)self executionStartTime];
    if (Current == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    return Current - v4;
  }

  return result;
}

- (double)executionTime
{
  [(PLInstrumentedBlockOperation *)self executionStartTime];
  v4 = v3;
  result = 0.0;
  if (v4 != 0.0)
  {
    [(PLInstrumentedBlockOperation *)self executionEndTime];
    if (Current == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    return Current - v4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = PLInstrumentedBlockOperation;
  v4 = [(PLInstrumentedBlockOperation *)&v10 description];
  [(PLInstrumentedBlockOperation *)self executionTime];
  v6 = v5;
  [(PLInstrumentedBlockOperation *)self timeSpentWaitingInQueue];
  v8 = [v3 stringWithFormat:@"%@ execution time: %.4f, time waiting in queue: %.4f", v4, v6, v7];

  return v8;
}

- (void)addExecutionBlock:(id)block
{
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = PLInstrumentedBlockOperation;
  [(NSBlockOperation *)&v15 addExecutionBlock:blockCopy];
  if ([(PLInstrumentedBlockOperation *)self postambleAdded])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInstrumentedBlockOperation.m" lineNumber:57 description:{@"adding multiple execution blocks is not supported on %@", v10}];
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__99887;
  v13[4] = __Block_byref_object_dispose__99888;
  selfCopy = self;
  v14 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PLInstrumentedBlockOperation_addExecutionBlock___block_invoke;
  aBlock[3] = &unk_1E7577EA0;
  aBlock[4] = v13;
  v7 = _Block_copy(aBlock);
  v11.receiver = selfCopy;
  v11.super_class = PLInstrumentedBlockOperation;
  [(NSBlockOperation *)&v11 addExecutionBlock:v7];
  [(PLInstrumentedBlockOperation *)selfCopy setPostambleAdded:1];

  _Block_object_dispose(v13, 8);
}

void __50__PLInstrumentedBlockOperation_addExecutionBlock___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setExecutionEndTime:CFAbsoluteTimeGetCurrent()];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (PLInstrumentedBlockOperation)init
{
  v11.receiver = self;
  v11.super_class = PLInstrumentedBlockOperation;
  v2 = [(NSBlockOperation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = __Block_byref_object_copy__99887;
    v9[4] = __Block_byref_object_dispose__99888;
    v4 = v2;
    v10 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__PLInstrumentedBlockOperation_init__block_invoke;
    aBlock[3] = &unk_1E7577EA0;
    aBlock[4] = v9;
    v5 = _Block_copy(aBlock);
    v7.receiver = v4;
    v7.super_class = PLInstrumentedBlockOperation;
    [(NSBlockOperation *)&v7 addExecutionBlock:v5];

    _Block_object_dispose(v9, 8);
  }

  return v3;
}

void __36__PLInstrumentedBlockOperation_init__block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setExecutionStartTime:CFAbsoluteTimeGetCurrent()];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (id)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 addExecutionBlock:blockCopy];

  return v4;
}

@end