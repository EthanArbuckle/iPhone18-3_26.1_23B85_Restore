@interface _SBSynchronizeOperation
- (_SBSynchronizeOperation)init;
- (void)addTask:(id)task;
- (void)main;
@end

@implementation _SBSynchronizeOperation

- (_SBSynchronizeOperation)init
{
  v8.receiver = self;
  v8.super_class = _SBSynchronizeOperation;
  v2 = [(_SBSynchronizeOperation *)&v8 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    operationGroup = v2->_operationGroup;
    v2->_operationGroup = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v2->_tasks;
    v2->_tasks = v5;
  }

  return v2;
}

- (void)addTask:(id)task
{
  taskCopy = task;
  if (([(_SBSynchronizeOperation *)self isFinished]& 1) != 0 || [(_SBSynchronizeOperation *)self isExecuting])
  {
    [(_SBSynchronizeOperation *)a2 addTask:?];
  }

  tasks = self->_tasks;
  v6 = MEMORY[0x223D6F7F0](taskCopy);
  [(NSMutableArray *)tasks addObject:v6];
}

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  BSContinuousMachTimeNow();
  v5 = v4;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(_SBSynchronizeOperation *)self name];
    *buf = 138543362;
    v22 = name;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SynchronizeCloudCriticalData - operation started: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_tasks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v17 + 1) + 8 * v12) + 16))(*(*(&v17 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  BSContinuousMachTimeNow();
  v14 = v13;
  v15 = SBLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [(_SBSynchronizeOperation *)self name];
    *buf = 138543618;
    v22 = name2;
    v23 = 2048;
    v24 = v14 - v5;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SynchronizeCloudCriticalData - operation ended: %{public}@ (duration: %fs)", buf, 0x16u);
  }
}

- (void)addTask:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBSynchronizeOperation.m" lineNumber:34 description:@"Cannot add a task to a synchronize operation that has already completed or is currently executing."];
}

@end