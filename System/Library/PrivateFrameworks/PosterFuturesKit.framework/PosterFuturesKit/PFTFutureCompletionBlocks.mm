@interface PFTFutureCompletionBlocks
- (BOOL)shouldCallImmediately;
- (PFTFutureCompletionBlocks)init;
- (void)addCompletionBlock:(id)block orCallWithFutureResult:(id)result;
- (void)addFailureBlock:(id)block orCallWithFutureResult:(id)result;
- (void)addSuccessBlock:(id)block orCallWithFutureResult:(id)result;
- (void)flushCompletionBlocksWithFutureResult:(id)result;
- (void)setShouldCallImmediately:(BOOL)immediately;
@end

@implementation PFTFutureCompletionBlocks

- (PFTFutureCompletionBlocks)init
{
  v7.receiver = self;
  v7.super_class = PFTFutureCompletionBlocks;
  v2 = [(PFTFutureCompletionBlocks *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)shouldCallImmediately
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldCallImmediately = selfCopy->_shouldCallImmediately;
  objc_sync_exit(selfCopy);

  return shouldCallImmediately;
}

- (void)setShouldCallImmediately:(BOOL)immediately
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldCallImmediately = immediately;
  objc_sync_exit(obj);
}

- (void)addSuccessBlock:(id)block orCallWithFutureResult:(id)result
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__PFTFutureCompletionBlocks_addSuccessBlock_orCallWithFutureResult___block_invoke;
  v10[3] = &unk_279A53378;
  v11 = blockCopy;
  v7 = blockCopy;
  resultCopy = result;
  v9 = MEMORY[0x25F8CF560](v10);
  [(PFTFutureCompletionBlocks *)self addCompletionBlock:v9 orCallWithFutureResult:resultCopy];
}

uint64_t __68__PFTFutureCompletionBlocks_addSuccessBlock_orCallWithFutureResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addFailureBlock:(id)block orCallWithFutureResult:(id)result
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__PFTFutureCompletionBlocks_addFailureBlock_orCallWithFutureResult___block_invoke;
  v10[3] = &unk_279A53378;
  v11 = blockCopy;
  v7 = blockCopy;
  resultCopy = result;
  v9 = MEMORY[0x25F8CF560](v10);
  [(PFTFutureCompletionBlocks *)self addCompletionBlock:v9 orCallWithFutureResult:resultCopy];
}

uint64_t __68__PFTFutureCompletionBlocks_addFailureBlock_orCallWithFutureResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addCompletionBlock:(id)block orCallWithFutureResult:(id)result
{
  blockCopy = block;
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_shouldCallImmediately)
  {
    objc_sync_exit(selfCopy);

    selfCopy = [resultCopy result];
    error = [resultCopy error];
    blockCopy[2](blockCopy, selfCopy, error);
  }

  else
  {
    completionBlocks = selfCopy->_completionBlocks;
    v10 = [blockCopy copy];
    [(NSMutableArray *)completionBlocks addObject:v10];

    objc_sync_exit(selfCopy);
  }
}

- (void)flushCompletionBlocksWithFutureResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_completionBlocks copy];
  [(NSMutableArray *)selfCopy->_completionBlocks removeAllObjects];
  objc_sync_exit(selfCopy);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        result = [resultCopy result];
        error = [resultCopy error];
        (*(v11 + 16))(v11, result, error);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end