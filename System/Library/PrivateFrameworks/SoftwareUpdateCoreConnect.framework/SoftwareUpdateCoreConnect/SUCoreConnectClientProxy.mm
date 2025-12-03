@interface SUCoreConnectClientProxy
- (NSString)description;
- (SUCoreConnectClientProxy)initWithClientID:(id)d completionQueue:(id)queue genericBlock:(id)block progressBlock:(id)progressBlock;
- (SUCoreConnectClientProxy)initWithCoder:(id)coder;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)executeGenericBlock:(id)block disableVerboseLogging:(BOOL)logging;
- (void)executeProgressBlock:(id)block disableVerboseLogging:(BOOL)logging;
@end

@implementation SUCoreConnectClientProxy

- (SUCoreConnectClientProxy)initWithClientID:(id)d completionQueue:(id)queue genericBlock:(id)block progressBlock:(id)progressBlock
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  progressBlockCopy = progressBlock;
  v33.receiver = self;
  v33.super_class = SUCoreConnectClientProxy;
  v15 = [(SUCoreConnectClientProxy *)&v33 init];
  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v18 = [v16 stringWithFormat:@"%@.<%d>", dCopy, objc_msgSend(processInfo, "processIdentifier")];
    clientID = v15->_clientID;
    v15->_clientID = v18;

    objc_storeStrong(&v15->_clientIDRaw, d);
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    v15->_clientProcessIdentifier = [processInfo2 processIdentifier];

    objc_storeStrong(&v15->_completionQueue, queue);
    v21 = MEMORY[0x2318E52D0](blockCopy);
    genericBlock = v15->_genericBlock;
    v15->_genericBlock = v21;

    v23 = MEMORY[0x2318E52D0](progressBlockCopy);
    progressBlock = v15->_progressBlock;
    v15->_progressBlock = v23;

    if (!v15->_completionQueue)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCoreConnectClientProxy *)v15 summary];
        *buf = 138543362;
        v35 = summary;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[%{public}@] No completion queue was provided on initialization, creating new completion queue", buf, 0xCu);
      }

      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_create("com.apple.SUCoreConnect.ClientProxyCompletionQueue", v28);
      completionQueue = v15->_completionQueue;
      v15->_completionQueue = v29;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)executeGenericBlock:(id)block disableVerboseLogging:(BOOL)logging
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  genericBlock = [(SUCoreConnectClientProxy *)self genericBlock];

  if (genericBlock)
  {
    if (!logging)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCoreConnectClientProxy *)self summary];
        *buf = 138543618;
        v19 = summary;
        v20 = 2114;
        v21 = objc_opt_class();
        v11 = v21;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling genericBlock on completion queue with object: %{public}@", buf, 0x16u);
      }
    }

    completionQueue = [(SUCoreConnectClientProxy *)self completionQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SUCoreConnectClientProxy_executeGenericBlock_disableVerboseLogging___block_invoke;
    v16[3] = &unk_2787BC990;
    v16[4] = self;
    v17 = blockCopy;
    dispatch_async(completionQueue, v16);
  }

  else if (!logging)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClientProxy executeGenericBlock:? disableVerboseLogging:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __70__SUCoreConnectClientProxy_executeGenericBlock_disableVerboseLogging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) genericBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)executeProgressBlock:(id)block disableVerboseLogging:(BOOL)logging
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  progressBlock = [(SUCoreConnectClientProxy *)self progressBlock];

  if (progressBlock)
  {
    if (!logging)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCoreConnectClientProxy *)self summary];
        summary2 = [blockCopy summary];
        *buf = 138543618;
        v19 = summary;
        v20 = 2114;
        v21 = summary2;
        _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling progressBlock on completion queue with progress: %{public}@", buf, 0x16u);
      }
    }

    completionQueue = [(SUCoreConnectClientProxy *)self completionQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SUCoreConnectClientProxy_executeProgressBlock_disableVerboseLogging___block_invoke;
    v16[3] = &unk_2787BC990;
    v16[4] = self;
    v17 = blockCopy;
    dispatch_async(completionQueue, v16);
  }

  else if (!logging)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClientProxy executeProgressBlock:blockCopy disableVerboseLogging:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__SUCoreConnectClientProxy_executeProgressBlock_disableVerboseLogging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = [(SUCoreConnectClientProxy *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"SUCoreConnectClientProxyClientID"];
}

- (SUCoreConnectClientProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCoreConnectClientProxy;
  v5 = [(SUCoreConnectClientProxy *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUCoreConnectClientProxyClientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;
  }

  return v5;
}

- (id)summary
{
  v2 = MEMORY[0x277CCACA8];
  clientID = [(SUCoreConnectClientProxy *)self clientID];
  v4 = [v2 stringWithFormat:@"SUCoreConnectClientProxy(%@)", clientID];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clientID = [(SUCoreConnectClientProxy *)self clientID];
  completionQueue = [(SUCoreConnectClientProxy *)self completionQueue];
  if (completionQueue)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  genericBlock = [(SUCoreConnectClientProxy *)self genericBlock];
  if (genericBlock)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  progressBlock = [(SUCoreConnectClientProxy *)self progressBlock];
  if (progressBlock)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"SUCoreConnectClientProxy(clientID:%@|completionQueue:%@|genericBlock:%@|progressBlock:%@)", clientID, v6, v8, v10];

  return v11;
}

- (void)executeGenericBlock:(void *)a1 disableVerboseLogging:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [a1 summary];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_0(&dword_22E2D6000, v4, v5, "[%{public}@] Unable to execute a nil generic block with object: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)executeProgressBlock:(void *)a1 disableVerboseLogging:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a1 summary];
  v4 = [a2 summary];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_22E2D6000, v5, v6, "[%{public}@] Unable to execute a nil progress block with progress: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end