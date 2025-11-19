@interface TRICancelableCKOperation
- (BOOL)isCanceled;
- (TRICancelableCKOperation)initWithOperation:(id)a3;
- (void)addOperation:(id)a3;
@end

@implementation TRICancelableCKOperation

- (TRICancelableCKOperation)initWithOperation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TRICancelableCKOperation;
  v5 = [(TRICancelableCKOperation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;

    *(v6 + 16) = 0;
    if (v4)
    {
      [*(v6 + 8) addObject:v4];
    }

    v9 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v6];
    lock = v5->_lock;
    v5->_lock = v9;
  }

  return v5;
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TRICancelableCKOperation_addOperation___block_invoke;
  v7[3] = &unk_279DDEF58;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __41__TRICancelableCKOperation_addOperation___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    return [*(a1 + 32) cancel];
  }

  else
  {
    return [*(a2 + 8) addObject:*(a1 + 32)];
  }
}

- (BOOL)isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__TRICancelableCKOperation_isCanceled__block_invoke;
  v5[3] = &unk_279DDEF80;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__TRICancelableCKOperation_cancel__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2[1];
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

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [v2[1] removeAllObjects];
  *(v2 + 16) = 1;

  v8 = *MEMORY[0x277D85DE8];
}

@end