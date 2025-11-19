@interface PGParallelProgress
- (PGParallelProgress)initWithParallelOperationCount:(unint64_t)a3 progressBlock:(id)a4;
- (id)progressBlockForParallelOperationWithIndex:(unint64_t)a3;
@end

@implementation PGParallelProgress

- (id)progressBlockForParallelOperationWithIndex:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PGParallelProgress_progressBlockForParallelOperationWithIndex___block_invoke;
  v5[3] = &unk_278886F70;
  v5[4] = self;
  v5[5] = a3;
  v3 = _Block_copy(v5);

  return v3;
}

void __65__PGParallelProgress_progressBlockForParallelOperationWithIndex___block_invoke(uint64_t a1, double a2)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = [*(*(a1 + 32) + 24) count];
  if (*(a1 + 40) >= v4)
  {
    v7 = v4;
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 40);
      v12 = 134218240;
      v13 = v11;
      v14 = 2048;
      v15 = v7;
      _os_log_fault_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_FAULT, "Parallel progress index(%lu) out of bounds(%lu)", &v12, 0x16u);
    }
  }

  else
  {
    *&v5 = a2;
    [*(*(a1 + 32) + 24) setFloat:v5 atIndex:?];
    [*(*(a1 + 32) + 24) mean];
    a2 = v6;
  }

  (*(*(*(a1 + 32) + 16) + 16))(a2);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = *MEMORY[0x277D85DE8];
}

- (PGParallelProgress)initWithParallelOperationCount:(unint64_t)a3 progressBlock:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PGParallelProgress;
  v7 = [(PGParallelProgress *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = _Block_copy(v6);
    progressBlock = v8->_progressBlock;
    v8->_progressBlock = v9;

    v11 = [MEMORY[0x277D22C68] zerosOfCount:a3];
    progressValues = v8->_progressValues;
    v8->_progressValues = v11;
  }

  return v8;
}

@end