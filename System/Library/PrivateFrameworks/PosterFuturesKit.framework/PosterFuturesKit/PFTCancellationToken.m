@interface PFTCancellationToken
+ (id)tokenWithCancellationBlock:(id)a3;
+ (id)tokenWrappingCancellable:(id)a3;
- (BOOL)isCancelled;
- (PFTCancellationToken)init;
- (id)nts_cancel;
- (void)addCancellable:(id)a3;
- (void)addCancellationBlock:(id)a3;
- (void)callCancellationBlocks:(id)a3;
- (void)cancel;
- (void)performBlock:(id)a3;
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

+ (id)tokenWithCancellationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PFTWrappingCancellableToken);
  [(PFTCancellationToken *)v4 addCancellationBlock:v3];

  return v4;
}

+ (id)tokenWrappingCancellable:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PFTCancellationToken_tokenWrappingCancellable___block_invoke;
  v8[3] = &unk_279A52C60;
  v9 = v4;
  v5 = v4;
  v6 = [a1 tokenWithCancellationBlock:v8];

  return v6;
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PFTCancellationToken *)v2 nts_cancel];
  objc_sync_exit(v2);

  [(PFTCancellationToken *)v2 callCancellationBlocks:v3];
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

- (void)addCancellationBlock:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isCancelled)
  {
    objc_sync_exit(v4);

    v8[2]();
  }

  else
  {
    cancelationBlocks = v4->_cancelationBlocks;
    v6 = [v8 copy];
    v7 = MEMORY[0x25F8CF560]();
    [(NSMutableArray *)cancelationBlocks addObject:v7];

    objc_sync_exit(v4);
  }
}

- (void)addCancellable:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v8 = v4;
  v6 = v4;
  [(PFTCancellationToken *)self addCancellationBlock:v7];
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  isCancelled = v2->_isCancelled;
  objc_sync_exit(v2);

  return isCancelled;
}

- (void)performBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  isCancelled = v4->_isCancelled;
  objc_sync_exit(v4);

  v6 = v7;
  if (v7 && !isCancelled)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)callCancellationBlocks:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end