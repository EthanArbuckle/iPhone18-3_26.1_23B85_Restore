@interface RTDaemonClientRegistrarPredictedContext
- (BOOL)invocationsPending;
- (BOOL)registered;
- (BOOL)startMonitoringForPredictedContextWithOptions:(id)options error:(id *)error;
- (NSString)description;
- (RTDaemonClientRegistrarPredictedContext)initWithCoder:(id)coder;
- (RTDaemonClientRegistrarPredictedContext)initWithPredictedContextManager:(id)manager queue:(id)queue clientIdentity:(id)identity;
- (RTDaemonClientRegistrarPredictedContextProtocol)delegate;
- (int64_t)countOfPendingInvocations;
- (void)addPendingPredictedContextUpdateBlock:(id)block failBlock:(id)failBlock description:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)stopMonitoringForPredictedContext;
@end

@implementation RTDaemonClientRegistrarPredictedContext

- (RTDaemonClientRegistrarPredictedContext)initWithPredictedContextManager:(id)manager queue:(id)queue clientIdentity:(id)identity
{
  managerCopy = manager;
  queueCopy = queue;
  identityCopy = identity;
  if (!managerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: predictedContextManager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_9;
  }

  if (!queueCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: queue";
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = RTDaemonClientRegistrarPredictedContext;
  v12 = [(RTDaemonClientRegistrarPredictedContext *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = [[RTInvocationDispatcher alloc] initWithQueue:v13->_queue];
    dispatcher = v13->_dispatcher;
    v13->_dispatcher = v14;

    objc_storeStrong(&v13->_predictedContextManager, manager);
    objc_storeStrong(&v13->_clientIdentity, identity);
  }

  self = v13;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (RTDaemonClientRegistrarPredictedContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RTDaemonClientRegistrarPredictedContext;
  v5 = [(RTDaemonClientRegistrar *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTDaemonClientRegistrarPredictedContext;
  coderCopy = coder;
  [(RTDaemonClientRegistrar *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_options forKey:{@"options", v5.receiver, v5.super_class}];
}

- (BOOL)startMonitoringForPredictedContextWithOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      options = [(RTDaemonClientRegistrarPredictedContext *)self options];
      *buf = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = options;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, options, %@", buf, 0x16u);
    }
  }

  if ([(RTDaemonClientRegistrarPredictedContext *)self invocationsPending])
  {
    dispatcher = [(RTDaemonClientRegistrarPredictedContext *)self dispatcher];
    [dispatcher dispatchPendingInvocations];
  }

  registered = [(RTDaemonClientRegistrarPredictedContext *)self registered];
  if (registered)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"client already registered";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = [v13 errorWithDomain:v14 code:11 userInfo:v15];

    if (error)
    {
      v17 = v16;
      *error = v16;
    }
  }

  else
  {
    [(RTDaemonClientRegistrarPredictedContext *)self setOptions:optionsCopy];
    predictedContextManager = [(RTDaemonClientRegistrarPredictedContext *)self predictedContextManager];
    options2 = [(RTDaemonClientRegistrarPredictedContext *)self options];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__RTDaemonClientRegistrarPredictedContext_startMonitoringForPredictedContextWithOptions_error___block_invoke;
    v21[3] = &unk_2788D37A0;
    v21[4] = self;
    v21[5] = a2;
    [predictedContextManager startMonitoringForClient:self options:options2 handler:v21];

    v16 = 0;
  }

  return !registered;
}

void __95__RTDaemonClientRegistrarPredictedContext_startMonitoringForPredictedContextWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTDaemonClientRegistrarPredictedContext_startMonitoringForPredictedContextWithOptions_error___block_invoke_2;
  block[3] = &unk_2788C5020;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __95__RTDaemonClientRegistrarPredictedContext_startMonitoringForPredictedContextWithOptions_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = *(a1 + 32);
      v7 = 138412547;
      v8 = v3;
      v9 = 2117;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, callback, predicted context result, %{sensitive}@", &v7, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained predictedContextRegistrar:*(a1 + 40) didReceivePredictedContextResult:*(a1 + 32) error:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "no delegate or does not respond to selector, returning", &v7, 2u);
    }
  }
}

- (void)stopMonitoringForPredictedContext
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      options = [(RTDaemonClientRegistrarPredictedContext *)self options];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = options;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, options, %@", &v9, 0x16u);
    }
  }

  dispatcher = [(RTDaemonClientRegistrarPredictedContext *)self dispatcher];
  [dispatcher removeAllPendingInvocations];

  if ([(RTDaemonClientRegistrarPredictedContext *)self registered])
  {
    predictedContextManager = [(RTDaemonClientRegistrarPredictedContext *)self predictedContextManager];
    [predictedContextManager stopMonitoringForClient:self reply:0];

    [(RTDaemonClientRegistrarPredictedContext *)self setOptions:0];
  }
}

- (void)addPendingPredictedContextUpdateBlock:(id)block failBlock:(id)failBlock description:(id)description
{
  descriptionCopy = description;
  failBlockCopy = failBlock;
  blockCopy = block;
  dispatcher = [(RTDaemonClientRegistrarPredictedContext *)self dispatcher];
  [dispatcher enqueueBlock:blockCopy failureBlock:failBlockCopy description:{@"%@", descriptionCopy}];
}

- (int64_t)countOfPendingInvocations
{
  dispatcher = [(RTDaemonClientRegistrarPredictedContext *)self dispatcher];
  countOfPendingInvocations = [dispatcher countOfPendingInvocations];

  return countOfPendingInvocations;
}

- (BOOL)invocationsPending
{
  dispatcher = [(RTDaemonClientRegistrarPredictedContext *)self dispatcher];
  v3 = [dispatcher countOfPendingInvocations] != 0;

  return v3;
}

- (BOOL)registered
{
  options = [(RTDaemonClientRegistrarPredictedContext *)self options];
  v3 = options != 0;

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = RTDaemonClientRegistrarPredictedContext;
  v4 = [(RTDaemonClientRegistrarPredictedContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, clientIdentity, %@, options, %@", v4, self->_clientIdentity, self->_options];

  return v5;
}

- (RTDaemonClientRegistrarPredictedContextProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end