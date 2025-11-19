@interface VMOperation
- (NSProgress)progress;
- (VMOperation)init;
- (void)configureProgressWithUnitCount:(int64_t)a3;
- (void)performSynchronousBlock:(id)a3;
@end

@implementation VMOperation

- (VMOperation)init
{
  v14.receiver = self;
  v14.super_class = VMOperation;
  v2 = [(VMOperation *)&v14 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 bundleIdentifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3 stringWithFormat:@"%@.%@", v5, v7];
    v9 = NSStringFromSelector(sel_queue);
    v10 = [v3 stringWithFormat:@"%@.%@", v8, v9];

    v11 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v11;
  }

  return v2;
}

- (NSProgress)progress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__VMOperation_progress__block_invoke;
  v4[3] = &unk_279E3D108;
  v4[4] = self;
  v4[5] = &v5;
  [(VMOperation *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)configureProgressWithUnitCount:(int64_t)a3
{
  v5 = [(VMOperation *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__VMOperation_configureProgressWithUnitCount___block_invoke;
  v6[3] = &unk_279E3D130;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

uint64_t __46__VMOperation_configureProgressWithUnitCount___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;

  [*(*(a1 + 32) + 248) setCancellable:1];
  v5 = *(*(a1 + 32) + 248);

  return [v5 setPausable:0];
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(VMOperationDispatchQueueContextKey) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(VMOperation *)self queue];
    dispatch_sync(v7, v5);
  }
}

@end