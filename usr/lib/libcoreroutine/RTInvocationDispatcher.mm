@interface RTInvocationDispatcher
- (BOOL)dispatchPendingInvocations;
- (BOOL)invocationsPending;
- (RTInvocationDispatcher)initWithQueue:(id)queue;
- (unint64_t)countOfPendingInvocations;
- (void)_enqueueBlock:(id)block failureBlock:(id)failureBlock description:(id)description;
- (void)enqueueBlock:(id)block description:(id)description;
- (void)enqueueBlock:(id)block failureBlock:(id)failureBlock description:(id)description;
- (void)removeAllPendingInvocations;
- (void)shutdown;
@end

@implementation RTInvocationDispatcher

- (unint64_t)countOfPendingInvocations
{
  pendingInvocations = [(RTInvocationDispatcher *)self pendingInvocations];
  v3 = [pendingInvocations count];

  return v3;
}

- (BOOL)invocationsPending
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      pendingInvocations = [(RTInvocationDispatcher *)self pendingInvocations];
      v7 = 134217984;
      v8 = [pendingInvocations count];
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "Pending invocation count, %lu", &v7, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    pendingInvocations2 = [(RTInvocationDispatcher *)self pendingInvocations];
    [pendingInvocations2 enumerateObjectsUsingBlock:&__block_literal_global_5];
  }

  return [(RTInvocationDispatcher *)self countOfPendingInvocations]!= 0;
}

- (BOOL)dispatchPendingInvocations
{
  v31 = *MEMORY[0x277D85DE8];
  pendingInvocations = [(RTInvocationDispatcher *)self pendingInvocations];
  v4 = [pendingInvocations copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = [v4 count];
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Dispatching %lu pending invocations.", buf, 0xCu);
    }
  }

  [(RTInvocationDispatcher *)self removeAllPendingInvocations];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    v11 = MEMORY[0x277D86220];
    v12 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        valid = [(RTInvocationDispatcher *)self valid];
        v16 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        if (valid)
        {
          if (v16)
          {
            v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              invocationDescription = [v14 invocationDescription];
              *buf = 134218242;
              v27 = v9 + 1;
              v28 = 2112;
              v29 = invocationDescription;
              _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "Invocation %lu, action, invoke, description, %@", buf, 0x16u);
            }
          }

          [v14 invoke];
        }

        else
        {
          if (v16)
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              invocationDescription2 = [v14 invocationDescription];
              *buf = 134218242;
              v27 = v9 + 1;
              v28 = 2112;
              v29 = invocationDescription2;
              _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "Invocation %lu, action, failure, description, %@", buf, 0x16u);
            }
          }

          [v14 invokeFailure];
          v12 = 0;
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)removeAllPendingInvocations
{
  pendingInvocations = [(RTInvocationDispatcher *)self pendingInvocations];
  [pendingInvocations removeAllObjects];
}

- (RTInvocationDispatcher)initWithQueue:(id)queue
{
  v17 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (!queueCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTInvocationDispatcher initWithQueue:]";
      v15 = 1024;
      v16 = 89;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

  v12.receiver = self;
  v12.super_class = RTInvocationDispatcher;
  v7 = [(RTInvocationDispatcher *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, queue);
    v8->_valid = 1;
    v9 = objc_opt_new();
    pendingInvocations = v8->_pendingInvocations;
    v8->_pendingInvocations = v9;
  }

  return v8;
}

- (void)shutdown
{
  v22 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__6;
  v16[4] = __Block_byref_object_dispose__6;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];
  v9 = v8;
  [v8 UTF8String];
  v17 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = [(RTInvocationDispatcher *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RTInvocationDispatcher_shutdown__block_invoke;
  block[3] = &unk_2788C4FD8;
  block[4] = self;
  block[5] = v16;
  dispatch_async(queue, block);

  _Block_object_dispose(v16, 8);
}

void __34__RTInvocationDispatcher_shutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setValid:0];
  [*(a1 + 32) dispatchPendingInvocations];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)enqueueBlock:(id)block description:(id)description
{
  v6 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  blockCopy = block;
  v9 = [[v6 alloc] initWithFormat:descriptionCopy arguments:&v10];

  [(RTInvocationDispatcher *)self _enqueueBlock:blockCopy failureBlock:0 description:v9];
}

- (void)enqueueBlock:(id)block failureBlock:(id)failureBlock description:(id)description
{
  v8 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  failureBlockCopy = failureBlock;
  blockCopy = block;
  v12 = [[v8 alloc] initWithFormat:descriptionCopy arguments:&v13];

  [(RTInvocationDispatcher *)self _enqueueBlock:blockCopy failureBlock:failureBlockCopy description:v12];
}

- (void)_enqueueBlock:(id)block failureBlock:(id)failureBlock description:(id)description
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  failureBlockCopy = failureBlock;
  descriptionCopy = description;
  valid = [(RTInvocationDispatcher *)self valid];
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (!failureBlockCopy || valid)
  {
    if (v12)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = descriptionCopy;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "Enqueuing invocation, description, %@", &v17, 0xCu);
      }
    }

    v15 = [[RTInvocationRecord alloc] initWithBlock:blockCopy failureBlock:failureBlockCopy description:descriptionCopy];
    pendingInvocations = [(RTInvocationDispatcher *)self pendingInvocations];
    [pendingInvocations addObject:v15];
  }

  else
  {
    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = descriptionCopy;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "Dispatcher invalid, invoking failure block, description, %@", &v17, 0xCu);
      }
    }

    failureBlockCopy[2](failureBlockCopy);
  }
}

void __44__RTInvocationDispatcher_invocationsPending__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a3 + 1;
      v7 = [v4 invocationDescription];
      v8 = 134218242;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Invocation %lu, %@", &v8, 0x16u);
    }
  }
}

@end