@interface SBPPTBlockOperation
+ (id)operationWithBlock:(id)block;
+ (id)operationWithName:(id)name block:(id)block;
- (SBPPTBlockOperation)initWithBlock:(id)block;
- (SBPPTBlockOperation)initWithName:(id)name block:(id)block;
- (id)description;
- (id)timeoutBlock;
- (void)cancel;
- (void)cancelAndFailTestWithReason:(id)reason;
- (void)finish;
- (void)main;
- (void)start;
@end

@implementation SBPPTBlockOperation

+ (id)operationWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

+ (id)operationWithName:(id)name block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy block:blockCopy];

  return v8;
}

- (SBPPTBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = SBPPTBlockOperation;
  v5 = [(SBPPTOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeoutInterval = 15.0;
    v5->_state = 0;
    v7 = [blockCopy copy];
    block = v6->_block;
    v6->_block = v7;
  }

  return v6;
}

- (SBPPTBlockOperation)initWithName:(id)name block:(id)block
{
  nameCopy = name;
  v7 = [(SBPPTBlockOperation *)self initWithBlock:block];
  v8 = v7;
  if (v7)
  {
    [(SBPPTOperation *)v7 setOperationName:nameCopy];
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  state = [(SBPPTBlockOperation *)self state];
  v5 = @"Pending";
  if (state == 2)
  {
    v5 = @"Finished";
  }

  if (state == 1)
  {
    v6 = @"Executing";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendString:v6 withName:@"state"];
  v7 = [v3 appendFloat:@"timeoutInterval" withName:self->_timeoutInterval];
  operationName = [(SBPPTOperation *)self operationName];
  [v3 appendString:operationName withName:@"operationName"];

  build = [v3 build];

  return build;
}

__CFString *__34__SBPPTBlockOperation_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) state];
  v2 = @"Pending";
  if (v1 == 2)
  {
    v2 = @"Finished";
  }

  if (v1 == 1)
  {
    return @"Executing";
  }

  else
  {
    return v2;
  }
}

- (void)finish
{
  block = [(SBPPTBlockOperation *)self timeoutBlock];
  if (block)
  {
    dispatch_block_cancel(block);
    [(SBPPTBlockOperation *)self setTimeoutBlock:0];
  }

  [(SBPPTBlockOperation *)self setState:2];
  [(SBPPTOperation *)self operationDidFinish];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = SBPPTBlockOperation;
  [(SBPPTBlockOperation *)&v3 cancel];
  self->_cancelled = 1;
  [(SBPPTBlockOperation *)self finish];
}

- (void)cancelAndFailTestWithReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = +[SBApplicationTestingManager sharedInstance];
  currentTestName = [v5 currentTestName];

  [*MEMORY[0x277D76620] failedTest:currentTestName withFailure:reasonCopy];
  v11.receiver = self;
  v11.super_class = SBPPTBlockOperation;
  [(SBPPTBlockOperation *)&v11 cancel];
  self->_cancelled = 1;
  v7 = SBLogPPT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    operationName = [(SBPPTOperation *)self operationName];
    v9 = operationName;
    if (operationName)
    {
      selfCopy = operationName;
    }

    else
    {
      selfCopy = self;
    }

    *buf = 138412546;
    v13 = selfCopy;
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' cancelled for reason: %@", buf, 0x16u);
  }

  [(SBPPTBlockOperation *)self finish];
}

- (void)start
{
  operationName = [self operationName];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Skipping '%@' because it's already executing", v4, v5, v6, v7, 2u);
}

- (void)main
{
  [(SBPPTBlockOperation *)self timeoutInterval];
  v4 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__SBPPTBlockOperation_main__block_invoke;
  v8[3] = &unk_2783A8BC8;
  v8[4] = self;
  *&v8[5] = v3;
  v5 = dispatch_block_create(0, v8);
  [(SBPPTBlockOperation *)self setTimeoutBlock:v5];
  v6 = dispatch_time(0, (v4 * 1000000000.0));
  dispatch_after(v6, MEMORY[0x277D85CD0], v5);
  [(SBPPTOperation *)self operationWillStart];
  block = [(SBPPTBlockOperation *)self block];
  (block)[2](block, self);
}

void __27__SBPPTBlockOperation_main__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Operation didn't complete within %f seconds", *(a1 + 40)];
  [v1 cancelAndFailTestWithReason:v2];
}

- (id)timeoutBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_timeoutBlock);

  return WeakRetained;
}

@end