@interface PBFPosterSnapshotFetchCompletionHandler
- (PBFPosterSnapshotFetchCompletionHandler)initWithRequest:(id)request completionHandler:(id)handler queue:(id)queue;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)finishWithSuccess:(id)success;
@end

@implementation PBFPosterSnapshotFetchCompletionHandler

- (PBFPosterSnapshotFetchCompletionHandler)initWithRequest:(id)request completionHandler:(id)handler queue:(id)queue
{
  requestCopy = request;
  handlerCopy = handler;
  queueCopy = queue;
  if (!handlerCopy)
  {
    [PBFPosterSnapshotFetchCompletionHandler initWithRequest:a2 completionHandler:? queue:?];
  }

  if (!requestCopy)
  {
    [PBFPosterSnapshotFetchCompletionHandler initWithRequest:a2 completionHandler:? queue:?];
  }

  v13 = queueCopy;
  if (!queueCopy)
  {
    [PBFPosterSnapshotFetchCompletionHandler initWithRequest:a2 completionHandler:? queue:?];
  }

  v21.receiver = self;
  v21.super_class = PBFPosterSnapshotFetchCompletionHandler;
  v14 = [(PBFPosterSnapshotFetchCompletionHandler *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
    v16 = [handlerCopy copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    objc_storeStrong(&v15->_queue, queue);
    v18 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    didFireCompletionHandler = v15->_didFireCompletionHandler;
    v15->_didFireCompletionHandler = v18;
  }

  return v15;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(self + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_21B526000, a2, OS_LOG_TYPE_FAULT, "Completion handler deallocated without being fired! Request: %{public}@", &v3, 0xCu);
}

- (void)finishWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(BSAtomicFlag *)self->_didFireCompletionHandler setFlag:1])
  {
    v5 = _Block_copy(self->_completionHandler);
    v6 = PBFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      request = self->_request;
      *buf = 138543362;
      v15 = request;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "Fired ERROR completion handler for %{public}@", buf, 0xCu);
    }

    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__PBFPosterSnapshotFetchCompletionHandler_finishWithError___block_invoke;
    v11[3] = &unk_2782C6310;
    v13 = v5;
    v12 = errorCopy;
    v9 = v5;
    dispatch_async(queue, v11);
  }

  else
  {
    v9 = PBFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_request;
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "Already fired completion handler for %{public}@; bailing", buf, 0xCu);
    }
  }
}

- (void)finishWithSuccess:(id)success
{
  v16 = *MEMORY[0x277D85DE8];
  successCopy = success;
  if ([(BSAtomicFlag *)self->_didFireCompletionHandler setFlag:1])
  {
    v5 = _Block_copy(self->_completionHandler);
    v6 = PBFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      request = self->_request;
      *buf = 138543362;
      v15 = request;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "Fired SUCCESS completion handler for %{public}@", buf, 0xCu);
    }

    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__PBFPosterSnapshotFetchCompletionHandler_finishWithSuccess___block_invoke;
    v11[3] = &unk_2782C6310;
    v13 = v5;
    v12 = successCopy;
    v9 = v5;
    dispatch_async(queue, v11);
  }

  else
  {
    v9 = PBFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_request;
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "Already fired completion handler for %{public}@; bailing", buf, 0xCu);
    }
  }
}

- (void)initWithRequest:(const char *)a1 completionHandler:queue:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"queue", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRequest:(const char *)a1 completionHandler:queue:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"request", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRequest:(const char *)a1 completionHandler:queue:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completionHandler", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end