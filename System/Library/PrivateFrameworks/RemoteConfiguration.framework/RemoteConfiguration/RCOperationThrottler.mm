@interface RCOperationThrottler
- (BOOL)suspended;
- (RCOperationThrottler)init;
- (RCOperationThrottler)initWithDelegate:(id)delegate;
- (RCOperationThrottler)initWithDelegate:(id)delegate updateQueue:(id)queue;
- (void)addCompletionForCurrentOperation:(id)operation;
- (void)dealloc;
- (void)setSuspended:(BOOL)suspended;
- (void)tickleWithCompletion:(id)completion;
@end

@implementation RCOperationThrottler

- (RCOperationThrottler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[RCOperationThrottler init]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Operations/RCOperationThrottler.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[RCOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (RCOperationThrottler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCOperationThrottler initWithDelegate:];
  }

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create(0, v5);
  v7 = [(RCOperationThrottler *)self initWithDelegate:delegateCopy updateQueue:v6];

  return v7;
}

- (RCOperationThrottler)initWithDelegate:(id)delegate updateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCOperationThrottler initWithDelegate:updateQueue:];
  }

  v30.receiver = self;
  v30.super_class = RCOperationThrottler;
  v8 = [(RCOperationThrottler *)&v30 init];
  v9 = v8;
  if (v8)
  {
    if (delegateCopy)
    {
      objc_initWeak(&location, v8);
      objc_initWeak(&from, delegateCopy);
      v10 = dispatch_group_create();
      objc_storeStrong(&v9->_handlerSynchronizationGroup, v10);
      objc_storeStrong(&v9->_serialQueue, queue);
      v11 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, queueCopy);
      dispatchSource = v9->_dispatchSource;
      v9->_dispatchSource = v11;
      v13 = v11;

      objc_initWeak(&v27, v13);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke;
      handler[3] = &unk_27822FBB0;
      v14 = v10;
      v22 = v14;
      objc_copyWeak(&v24, &from);
      objc_copyWeak(&v25, &location);
      objc_copyWeak(&v26, &v27);
      v15 = queueCopy;
      v23 = v15;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_group_enter(v14);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_5;
      v18[3] = &unk_27822F130;
      v19 = v15;
      v20 = v14;
      v16 = v14;
      dispatch_source_set_cancel_handler(v13, v18);
      dispatch_resume(v13);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v24);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

void __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_2;
  v3[3] = &unk_27822FB88;
  objc_copyWeak(&v5, (a1 + 56));
  objc_copyWeak(&v6, (a1 + 64));
  v4 = *(a1 + 40);
  RCPerformIfNonNil(WeakRetained, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_3;
  v6[3] = &unk_27822FB60;
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[4];
  RCPerformIfNonNil(WeakRetained, v6);

  objc_destroyWeak(&v9);
}

void __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) operationThrottlerPerformOperation:v3];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    dispatch_suspend(WeakRetained);
    dispatch_suspend(*(a1 + 40));
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_4;
    v8[3] = &unk_27822F130;
    v9 = WeakRetained;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    v7 = WeakRetained;
    [v6 operationThrottler:v3 performAsyncOperationWithCompletion:v8];
  }
}

void __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_4(uint64_t a1)
{
  dispatch_resume(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_resume(v2);
}

void __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RCOperationThrottler_initWithDelegate_updateQueue___block_invoke_6;
  block[3] = &unk_27822F2B0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_dispatchSource);
  v3.receiver = self;
  v3.super_class = RCOperationThrottler;
  [(RCOperationThrottler *)&v3 dealloc];
}

- (void)tickleWithCompletion:(id)completion
{
  if (completion)
  {
    dispatch_group_notify(self->_handlerSynchronizationGroup, self->_serialQueue, completion);
  }

  dispatchSource = self->_dispatchSource;

  dispatch_source_merge_data(dispatchSource, 1uLL);
}

- (void)addCompletionForCurrentOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCOperationThrottler addCompletionForCurrentOperation:];
  }

  dispatch_async(self->_serialQueue, operationCopy);
}

- (BOOL)suspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  objc_sync_exit(selfCopy);

  return suspended;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_suspended != suspendedCopy)
  {
    obj->_suspended = suspendedCopy;
    dispatchSource = obj->_dispatchSource;
    if (suspendedCopy)
    {
      dispatch_suspend(dispatchSource);
    }

    else
    {
      dispatch_resume(dispatchSource);
    }

    v4 = obj;
  }

  objc_sync_exit(v4);
}

- (void)initWithDelegate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "delegate != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:updateQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "delegate != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addCompletionForCurrentOperation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end