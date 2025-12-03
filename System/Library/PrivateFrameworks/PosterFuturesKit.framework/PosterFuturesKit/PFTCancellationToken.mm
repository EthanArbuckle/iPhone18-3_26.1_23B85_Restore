@interface PFTCancellationToken
+ (id)tokenWithCancellationBlock:(id)block;
+ (id)tokenWrappingCancellable:(id)cancellable;
- (BOOL)isCancelled;
- (PFTCancellationToken)init;
- (id)nts_cancel;
- (void)addCancellable:(id)cancellable;
- (void)addCancellationBlock:(id)block;
- (void)callCancellationBlocks:(id)blocks;
- (void)cancel;
- (void)performBlock:(id)block;
@end

@implementation PFTCancellationToken

- (PFTCancellationToken)init
{
  v7.receiver = self;
  v7.super_class = PFTCancellationToken;
  v2 = [(PFTCancellationToken *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cancelationBlocks = v2->_cancelationBlocks;
    v2->_cancelationBlocks = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)tokenWithCancellationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(PFTWrappingCancellableToken);
  [(PFTCancellationToken *)v4 addCancellationBlock:blockCopy];

  return v4;
}

+ (id)tokenWrappingCancellable:(id)cancellable
{
  cancellableCopy = cancellable;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PFTCancellationToken_tokenWrappingCancellable___block_invoke;
  v8[3] = &unk_279A52C60;
  v9 = cancellableCopy;
  v5 = cancellableCopy;
  v6 = [self tokenWithCancellationBlock:v8];

  return v6;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nts_cancel = [(PFTCancellationToken *)selfCopy nts_cancel];
  objc_sync_exit(selfCopy);

  [(PFTCancellationToken *)selfCopy callCancellationBlocks:nts_cancel];
}

- (id)nts_cancel
{
  if (self->_isCancelled)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    self->_isCancelled = 1;
    v2 = [(NSMutableArray *)self->_cancelationBlocks copy];
    cancelationBlocks = self->_cancelationBlocks;
    self->_cancelationBlocks = 0;
  }

  return v2;
}

- (void)addCancellationBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isCancelled)
  {
    objc_sync_exit(selfCopy);

    blockCopy[2]();
  }

  else
  {
    cancelationBlocks = selfCopy->_cancelationBlocks;
    v6 = [blockCopy copy];
    v7 = MEMORY[0x25F8CF560]();
    [(NSMutableArray *)cancelationBlocks addObject:v7];

    objc_sync_exit(selfCopy);
  }
}

- (void)addCancellable:(id)cancellable
{
  cancellableCopy = cancellable;
  if (!cancellableCopy)
  {
    if (PFTGuardOSLog_pft_once_token_7_0 != -1)
    {
      [PFTCancellationToken addCancellable:];
    }

    v5 = PFTGuardOSLog_pft_once_object_7_0;
    if (os_log_type_enabled(PFTGuardOSLog_pft_once_object_7_0, OS_LOG_TYPE_FAULT))
    {
      [PFTCancellationToken addCancellable:v5];
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PFTCancellationToken_addCancellable___block_invoke;
  v7[3] = &unk_279A52C60;
  v8 = cancellableCopy;
  v6 = cancellableCopy;
  [(PFTCancellationToken *)self addCancellationBlock:v7];
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = selfCopy->_isCancelled;
  objc_sync_exit(selfCopy);

  return isCancelled;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = selfCopy->_isCancelled;
  objc_sync_exit(selfCopy);

  v6 = blockCopy;
  if (blockCopy && !isCancelled)
  {
    (*(blockCopy + 2))(blockCopy);
    v6 = blockCopy;
  }
}

- (void)callCancellationBlocks:(id)blocks
{
  v14 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end