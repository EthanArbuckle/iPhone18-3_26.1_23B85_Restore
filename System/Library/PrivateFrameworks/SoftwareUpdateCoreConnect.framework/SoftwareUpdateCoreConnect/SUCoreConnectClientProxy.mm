@interface SUCoreConnectClientProxy
- (NSString)description;
- (SUCoreConnectClientProxy)initWithClientID:(id)a3 completionQueue:(id)a4 genericBlock:(id)a5 progressBlock:(id)a6;
- (SUCoreConnectClientProxy)initWithCoder:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)executeGenericBlock:(id)a3 disableVerboseLogging:(BOOL)a4;
- (void)executeProgressBlock:(id)a3 disableVerboseLogging:(BOOL)a4;
@end

@implementation SUCoreConnectClientProxy

- (SUCoreConnectClientProxy)initWithClientID:(id)a3 completionQueue:(id)a4 genericBlock:(id)a5 progressBlock:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33.receiver = self;
  v33.super_class = SUCoreConnectClientProxy;
  v15 = [(SUCoreConnectClientProxy *)&v33 init];
  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCAC38] processInfo];
    v18 = [v16 stringWithFormat:@"%@.<%d>", v11, objc_msgSend(v17, "processIdentifier")];
    clientID = v15->_clientID;
    v15->_clientID = v18;

    objc_storeStrong(&v15->_clientIDRaw, a3);
    v20 = [MEMORY[0x277CCAC38] processInfo];
    v15->_clientProcessIdentifier = [v20 processIdentifier];

    objc_storeStrong(&v15->_completionQueue, a4);
    v21 = MEMORY[0x2318E52D0](v13);
    genericBlock = v15->_genericBlock;
    v15->_genericBlock = v21;

    v23 = MEMORY[0x2318E52D0](v14);
    progressBlock = v15->_progressBlock;
    v15->_progressBlock = v23;

    if (!v15->_completionQueue)
    {
      v25 = [MEMORY[0x277D64460] sharedLogger];
      v26 = [v25 oslog];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(SUCoreConnectClientProxy *)v15 summary];
        *buf = 138543362;
        v35 = v27;
        _os_log_impl(&dword_22E2D6000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] No completion queue was provided on initialization, creating new completion queue", buf, 0xCu);
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

- (void)executeGenericBlock:(id)a3 disableVerboseLogging:(BOOL)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SUCoreConnectClientProxy *)self genericBlock];

  if (v7)
  {
    if (!a4)
    {
      v8 = [MEMORY[0x277D64460] sharedLogger];
      v9 = [v8 oslog];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SUCoreConnectClientProxy *)self summary];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = objc_opt_class();
        v11 = v21;
        _os_log_impl(&dword_22E2D6000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling genericBlock on completion queue with object: %{public}@", buf, 0x16u);
      }
    }

    v12 = [(SUCoreConnectClientProxy *)self completionQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SUCoreConnectClientProxy_executeGenericBlock_disableVerboseLogging___block_invoke;
    v16[3] = &unk_2787BC990;
    v16[4] = self;
    v17 = v6;
    dispatch_async(v12, v16);
  }

  else if (!a4)
  {
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

- (void)executeProgressBlock:(id)a3 disableVerboseLogging:(BOOL)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SUCoreConnectClientProxy *)self progressBlock];

  if (v7)
  {
    if (!a4)
    {
      v8 = [MEMORY[0x277D64460] sharedLogger];
      v9 = [v8 oslog];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SUCoreConnectClientProxy *)self summary];
        v11 = [v6 summary];
        *buf = 138543618;
        v19 = v10;
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_22E2D6000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling progressBlock on completion queue with progress: %{public}@", buf, 0x16u);
      }
    }

    v12 = [(SUCoreConnectClientProxy *)self completionQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SUCoreConnectClientProxy_executeProgressBlock_disableVerboseLogging___block_invoke;
    v16[3] = &unk_2787BC990;
    v16[4] = self;
    v17 = v6;
    dispatch_async(v12, v16);
  }

  else if (!a4)
  {
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClientProxy executeProgressBlock:v6 disableVerboseLogging:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__SUCoreConnectClientProxy_executeProgressBlock_disableVerboseLogging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectClientProxy *)self clientID];
  [v4 encodeObject:v5 forKey:@"SUCoreConnectClientProxyClientID"];
}

- (SUCoreConnectClientProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreConnectClientProxy;
  v5 = [(SUCoreConnectClientProxy *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUCoreConnectClientProxyClientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;
  }

  return v5;
}

- (id)summary
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCoreConnectClientProxy *)self clientID];
  v4 = [v2 stringWithFormat:@"SUCoreConnectClientProxy(%@)", v3];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCoreConnectClientProxy *)self clientID];
  v5 = [(SUCoreConnectClientProxy *)self completionQueue];
  if (v5)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(SUCoreConnectClientProxy *)self genericBlock];
  if (v7)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SUCoreConnectClientProxy *)self progressBlock];
  if (v9)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"SUCoreConnectClientProxy(clientID:%@|completionQueue:%@|genericBlock:%@|progressBlock:%@)", v4, v6, v8, v10];

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